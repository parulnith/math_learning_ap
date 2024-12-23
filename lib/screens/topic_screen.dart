import 'package:flutter/material.dart';
import '../models/topic.dart';
import '../models/user_progress.dart';
import 'lesson_screen.dart';

class TopicScreen extends StatelessWidget {
  final String title;
  final Color color;
  final List<Lesson> lessons;
  final UserProgress userProgress;

  const TopicScreen({
    super.key,
    required this.title,
    required this.color,
    required this.lessons,
    required this.userProgress,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          final lesson = lessons[index];
          final isCompleted = userProgress.hasCompletedLesson(lesson.id);
          
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Icon(
                isCompleted ? Icons.check_circle : Icons.play_circle_outline,
                color: isCompleted ? Colors.green : Colors.grey,
                size: 32,
              ),
              title: Text(
                lesson.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(
                    lesson.content.split('\n').first,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      const SizedBox(width: 4),
                      Text('10 XP'),
                    ],
                  ),
                ],
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LessonScreen(
                      lesson: lesson,
                      userProgress: userProgress,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
