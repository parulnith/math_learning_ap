import 'package:flutter/material.dart';
import 'models/user_profile.dart';
import 'models/user_progress.dart';
import 'screens/home_screen.dart';
import 'screens/nickname_screen.dart';
import 'data/topics_data.dart' as topics_data;

void main() {
  runApp(const MathLearningApp());
}

class MathLearningApp extends StatelessWidget {
  const MathLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Math Learning App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: NicknameScreen(
        onComplete: (UserProfile userProfile) {
          return HomeScreen(
            userProfile: userProfile,
            userProgress: UserProgress(),
            topics: topics_data.topics,
          );
        },
      ),
    );
  }
}
