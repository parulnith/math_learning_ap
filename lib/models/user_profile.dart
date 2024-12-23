class SuperheroAvatar {
  final String name;
  final String emoji;
  final String color;

  const SuperheroAvatar({
    required this.name,
    required this.emoji,
    required this.color,
  });
}

class UserProfile {
  final String nickname;
  final SuperheroAvatar? superhero;

  static const List<SuperheroAvatar> superheroAvatars = [
    SuperheroAvatar(
      name: 'Iron Math',
      emoji: '🦾',
      color: '#FF0000',
    ),
    SuperheroAvatar(
      name: 'Number Ninja',
      emoji: '🥷',
      color: '#4A148C',
    ),
    SuperheroAvatar(
      name: 'Math Wizard',
      emoji: '🧙‍♂️',
      color: '#1A237E',
    ),
    SuperheroAvatar(
      name: 'Equation Explorer',
      emoji: '🔭',
      color: '#004D40',
    ),
    SuperheroAvatar(
      name: 'Fraction Fighter',
      emoji: '🥊',
      color: '#BF360C',
    ),
  ];

  const UserProfile({
    required this.nickname,
    required this.superhero,
  });

  String getInitials() {
    return nickname.isNotEmpty ? nickname[0].toUpperCase() : '?';
  }
}
