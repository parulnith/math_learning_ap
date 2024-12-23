import 'package:flutter/material.dart';
import '../models/topic.dart';
import '../models/user_progress.dart';

class QuizScreen extends StatefulWidget {
  final Lesson lesson;
  final UserProgress userProgress;

  const QuizScreen({
    super.key,
    required this.lesson,
    required this.userProgress,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int? selectedAnswer;
  bool showExplanation = false;

  @override
  Widget build(BuildContext context) {
    final question = widget.lesson.exercises[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz: ${widget.lesson.title}'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Question ${currentQuestionIndex + 1}/${widget.lesson.exercises.length}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue[50]!,
              Colors.purple[50]!,
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      question.question,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: ListView.builder(
                    itemCount: question.options.length,
                    itemBuilder: (context, index) {
                      final isSelected = selectedAnswer == index;
                      final isCorrect = index == question.correctAnswer;
                      final showResult = showExplanation;

                      return Card(
                        margin: const EdgeInsets.only(bottom: 12),
                        elevation: isSelected ? 8 : 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: InkWell(
                          onTap: showExplanation ? null : () {
                            setState(() {
                              selectedAnswer = index;
                            });
                          },
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: showResult
                                  ? isCorrect
                                      ? Colors.green.withOpacity(0.2)
                                      : isSelected
                                          ? Colors.red.withOpacity(0.2)
                                          : null
                                  : isSelected
                                      ? Colors.blue.withOpacity(0.2)
                                      : null,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    question.options[index],
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                                if (showResult)
                                  Icon(
                                    isCorrect
                                        ? Icons.check_circle
                                        : isSelected
                                            ? Icons.cancel
                                            : null,
                                    color: isCorrect ? Colors.green : Colors.red,
                                  ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                if (selectedAnswer != null && !showExplanation)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showExplanation = true;
                        widget.userProgress.recordAnswer(
                          selectedAnswer == question.correctAnswer,
                        );
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Check Answer',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                if (showExplanation)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Explanation:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                question.explanation,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          if (currentQuestionIndex < widget.lesson.exercises.length - 1) {
                            setState(() {
                              currentQuestionIndex++;
                              selectedAnswer = null;
                              showExplanation = false;
                            });
                          } else {
                            Navigator.of(context).pop(true); // Return true to indicate completion
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          currentQuestionIndex < widget.lesson.exercises.length - 1
                              ? 'Next Question'
                              : 'Finish Quiz',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
