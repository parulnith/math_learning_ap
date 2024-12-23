import 'package:flutter/material.dart';
import '../models/topic.dart';
import '../models/user_progress.dart';
import 'quiz_screen.dart';

class LessonScreen extends StatefulWidget {
  final Lesson lesson;
  final UserProgress userProgress;

  const LessonScreen({
    super.key,
    required this.lesson,
    required this.userProgress,
  });

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  int _currentExerciseIndex = -1;
  int? _selectedAnswer;
  bool _showExplanation = false;
  bool _lessonCompleted = false;

  @override
  void initState() {
    super.initState();
    _lessonCompleted = widget.userProgress.hasCompletedLesson(widget.lesson.id);
  }

  void _completeLesson() {
    if (!_lessonCompleted) {
      setState(() {
        _lessonCompleted = true;
      });
      widget.userProgress.completeLesson(widget.lesson.id);
      _showCompletionDialog();
    }
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.celebration,
                  color: Colors.amber,
                  size: 64,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Congratulations! 🎉',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'You\'ve earned 10 XP!\n'
                  'Current streak: ${widget.userProgress.streak} days',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Continue'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _checkAnswer(int selectedAnswer) {
    setState(() {
      if (selectedAnswer == widget.lesson.exercises[_currentExerciseIndex].correctAnswer) {
        widget.userProgress.recordAnswer(true);
        if (widget.userProgress.getCurrentCorrectAnswers() == 0 && 
            widget.userProgress.getCurrentStreak() > 0) {
          // This means we just completed a streak
          _showStreakDialog();
        } else {
          _showSuccessDialog();
        }
      } else {
        widget.userProgress.recordAnswer(false);
        _showErrorDialog();
      }
    });
  }

  void _showStreakDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.orange[300]!,
                  Colors.orange[100]!,
                ],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.local_fire_department,
                  color: Colors.deepOrange,
                  size: 64,
                ),
                const SizedBox(height: 16),
                Text(
                  '🎉 Amazing Streak! 🎉',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Wow! You got 5 correct answers in a row!\n'
                  'You\'re on fire! Keep going! 🔥',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  '+25 XP Bonus!',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Keep Learning! 🚀',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showSuccessDialog() {
    // Implement success dialog
  }

  void _showErrorDialog() {
    // Implement error dialog
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lesson.title),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                const Icon(Icons.local_fire_department, color: Colors.orange),
                const SizedBox(width: 4),
                Text(
                  'Streak: ${widget.userProgress.streak}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 16),
                const Icon(Icons.star, color: Colors.yellow),
                const SizedBox(width: 4),
                Text(
                  'XP: ${widget.userProgress.totalXP}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lesson Content',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        widget.lesson.content,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  onPressed: () => _startQuiz(context),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.quiz),
                      SizedBox(width: 8),
                      Text(
                        'Start Quiz',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _startQuiz(BuildContext context) async {
    final completed = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => QuizScreen(
          lesson: widget.lesson,
          userProgress: widget.userProgress,
        ),
      ),
    );

    if (completed == true) {
      widget.userProgress.completeLesson(widget.lesson.id);
      Navigator.of(context).pop(); // Return to topic screen
    }
  }
}
