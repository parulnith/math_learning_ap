class TopicProgress {
  int completedLessons = 0;
  int totalXP = 0;
}

class UserProgress {
  int streak = 0;
  int totalXP = 0;
  int correctAnswersInARow = 0;
  final Map<String, TopicProgress> _topicProgress = {};

  UserProgress({
    this.streak = 0,
    this.totalXP = 0,
    this.correctAnswersInARow = 0,
  });

  void recordAnswer(bool isCorrect) {
    if (isCorrect) {
      correctAnswersInARow++;
      totalXP += 10;
      if (correctAnswersInARow == 5) {
        streak++;
        totalXP += 50; // Bonus XP for streak
        correctAnswersInARow = 0;
      }
    } else {
      correctAnswersInARow = 0;
    }
  }

  void completeLesson(String lessonId) {
    final topicId = lessonId.split('_')[0]; // Assuming format: "topicId_lessonId"
    final progress = _topicProgress.putIfAbsent(topicId, () => TopicProgress());
    progress.completedLessons++;
    progress.totalXP += 100; // XP for completing a lesson
    totalXP += 100;
  }

  TopicProgress getTopicProgress(String topicId) {
    return _topicProgress.putIfAbsent(topicId, () => TopicProgress());
  }

  bool hasCompletedLesson(String lessonId) {
    final topicId = lessonId.split('_')[0];
    final progress = _topicProgress[topicId];
    return progress?.completedLessons != null && progress!.completedLessons > 0;
  }

  int getCurrentStreak() {
    return streak;
  }

  int getCurrentCorrectAnswers() {
    return correctAnswersInARow;
  }
}
