import 'package:flutter/material.dart';

class Topic {
  final String id;
  final String title;
  final String description;
  final IconData icon;
  final List<Lesson> lessons;

  const Topic({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.lessons,
  });
}

class Lesson {
  final String id;
  final String title;
  final String content;
  final List<Exercise> exercises;

  const Lesson({
    required this.id,
    required this.title,
    required this.content,
    required this.exercises,
  });
}

class Exercise {
  final String id;
  final String question;
  final List<String> options;
  final int correctAnswer;
  final String explanation;

  const Exercise({
    required this.id,
    required this.question,
    required this.options,
    required this.correctAnswer,
    required this.explanation,
  });
}
