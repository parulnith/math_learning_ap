import 'package:flutter/material.dart';
import '../models/topic.dart';

final List<Topic> topics = [
  Topic(
    id: 'fractions',
    title: 'Fractions',
    description: 'Learn about fractions and how to work with them',
    icon: Icons.pie_chart,
    lessons: [
      Lesson(
        id: 'fractions_basics',
        title: 'Fractions Basics',
        content: '''Let's learn about fractions! 

A fraction represents a part of a whole. It shows how many parts of a whole number we have.

For example:
1/2 means one out of two parts
3/4 means three out of four parts

Remember:
• The number on top (numerator) tells us how many parts we have
• The number on bottom (denominator) tells us how many parts make up the whole
''',
        exercises: [
          Exercise(
            id: 'frac1',
            question: 'What fraction of the circle is shaded? ○●●',
            options: ['1/3', '2/3', '1/2', '2/4'],
            correctAnswer: 1,
            explanation: '2/3 is correct because two out of three parts are shaded',
          ),
          Exercise(
            id: 'frac2',
            question: 'If you have 3/4 of a chocolate bar, what does the 3 represent?',
            options: [
              'The size of the chocolate bar',
              'The number of pieces you have',
              'The total number of pieces',
              'The number of chocolate bars'
            ],
            correctAnswer: 1,
            explanation: 'The top number (numerator) 3 tells us that we have 3 pieces out of the 4 equal pieces the chocolate bar was divided into.',
          ),
          Exercise(
            id: 'frac3',
            question: 'Which fraction represents a whole pizza?',
            options: [
              '1/2',
              '2/2',
              '3/3',
              '4/4'
            ],
            correctAnswer: 2,
            explanation: 'When the numerator equals the denominator (3/3), it means we have all the parts, making a whole!',
          ),
          Exercise(
            id: 'frac4',
            question: 'If you cut an apple into 6 equal pieces and eat 4 pieces, what fraction is left?',
            options: [
              '4/6',
              '2/6',
              '6/2',
              '1/3'
            ],
            correctAnswer: 1,
            explanation: 'If you eat 4 out of 6 pieces, 2 pieces remain. Therefore, 2/6 of the apple is left.',
          ),
          Exercise(
            id: 'frac5',
            question: 'Which is larger: 1/2 or 1/4?',
            options: [
              '1/4',
              '1/2',
              'They are equal',
              'Cannot be compared'
            ],
            correctAnswer: 1,
            explanation: '1/2 is larger because when we divide something into 2 parts, each part is bigger than when we divide it into 4 parts.',
          ),
          Exercise(
            id: 'frac6',
            question: 'What fraction of a day is 12 hours?',
            options: [
              '1/2',
              '1/3',
              '1/4',
              '2/3'
            ],
            correctAnswer: 2,
            explanation: 'Since a day has 24 hours, 12 hours is half of a day, or 1/2.',
          ),
          Exercise(
            id: 'frac7',
            question: 'If you have 2/3 of a cake and eat 1/3, what fraction is left?',
            options: [
              '1/3',
              '2/3',
              '3/3',
              '0/3'
            ],
            correctAnswer: 0,
            explanation: 'If you start with 2/3 and eat 1/3, you have 1/3 left (2/3 - 1/3 = 1/3).',
          ),
          Exercise(
            id: 'frac8',
            question: 'Which fraction shows three-quarters?',
            options: [
              '1/4',
              '2/4',
              '3/4',
              '4/4'
            ],
            correctAnswer: 2,
            explanation: 'Three-quarters is written as 3/4, meaning 3 out of 4 equal parts.',
          ),
          Exercise(
            id: 'frac9',
            question: 'If you divide a pizza into 8 slices and eat 5, what fraction remains?',
            options: [
              '5/8',
              '3/8',
              '8/3',
              '3/5'
            ],
            correctAnswer: 1,
            explanation: 'If you eat 5 out of 8 slices, 3 slices remain. Therefore, 3/8 of the pizza is left.',
          ),
          Exercise(
            id: 'frac10',
            question: 'What does the fraction 5/5 represent?',
            options: [
              'Half',
              'Nothing',
              'A whole',
              'Five parts'
            ],
            correctAnswer: 2,
            explanation: 'When the numerator equals the denominator (5/5), it represents one whole.',
          ),
          Exercise(
            id: 'frac11',
            question: 'In the fraction 2/6, how many equal parts is the whole divided into?',
            options: [
              '2 parts',
              '6 parts',
              '8 parts',
              '3 parts'
            ],
            correctAnswer: 1,
            explanation: 'The denominator (6) tells us the whole is divided into 6 equal parts.',
          ),
          Exercise(
            id: 'frac12',
            question: 'Which fraction represents half of a half?',
            options: [
              '1/2',
              '1/4',
              '2/4',
              '3/4'
            ],
            correctAnswer: 1,
            explanation: 'Half of 1/2 is 1/4. Think of cutting a half into two equal pieces!',
          ),
          Exercise(
            id: 'frac13',
            question: 'If you have 4/4 of a chocolate bar and give away 1/4, what fraction do you have left?',
            options: [
              '4/4',
              '3/4',
              '1/4',
              '2/4'
            ],
            correctAnswer: 1,
            explanation: 'Starting with a whole (4/4) and giving away 1/4 leaves you with 3/4.',
          ),
          Exercise(
            id: 'frac14',
            question: 'What fraction of a week is 3 days?',
            options: [
              '1/2',
              '3/7',
              '4/7',
              '5/7'
            ],
            correctAnswer: 1,
            explanation: 'Since a week has 7 days, 3 days is represented as 3/7 of a week.',
          ),
          Exercise(
            id: 'frac15',
            question: 'If you divide a rectangle into 3 equal parts and color 2 parts, what fraction is colored?',
            options: [
              '1/3',
              '2/3',
              '3/2',
              '3/3'
            ],
            correctAnswer: 1,
            explanation: 'If 2 out of 3 equal parts are colored, the colored fraction is 2/3.',
          ),
          Exercise(
            id: 'frac16',
            question: 'Which fraction is equivalent to 2/4?',
            options: [
              '1/2',
              '1/4',
              '3/4',
              '4/2'
            ],
            correctAnswer: 0,
            explanation: '2/4 can be simplified to 1/2 because both the numerator and denominator can be divided by 2.',
          ),
          Exercise(
            id: 'frac17',
            question: 'If you have 3/8 of a pizza and your friend has 2/8, what fraction do you have together?',
            options: [
              '5/8',
              '6/8',
              '1/2',
              '3/4'
            ],
            correctAnswer: 0,
            explanation: 'Adding 3/8 and 2/8 gives us 5/8 (3 pieces plus 2 pieces = 5 pieces out of 8).',
          ),
          Exercise(
            id: 'frac18',
            question: 'What happens to a fraction if you multiply both the numerator and denominator by 2?',
            options: [
              'The fraction becomes larger',
              'The fraction becomes smaller',
              'The fraction stays the same',
              'The fraction becomes zero'
            ],
            correctAnswer: 2,
            explanation: 'When you multiply both the numerator and denominator by the same number, you create an equivalent fraction.',
          ),
          Exercise(
            id: 'frac19',
            question: 'In the fraction 7/10, if you add 1 to both numbers, what fraction do you get?',
            options: [
              '8/11',
              '7/10',
              '8/10',
              '7/11'
            ],
            correctAnswer: 0,
            explanation: 'Adding 1 to both numbers in 7/10 gives us 8/11, which is a different fraction.',
          ),
          Exercise(
            id: 'frac20',
            question: 'Which fraction represents 15 minutes in an hour?',
            options: [
              '1/2',
              '1/3',
              '1/4',
              '1/6'
            ],
            correctAnswer: 2,
            explanation: 'Since an hour has 60 minutes, 15 minutes is 1/4 of an hour.',
          ),
        ],
      ),
    ],
  ),
  Topic(
    id: 'decimals',
    title: 'Decimals',
    description: 'Learn about decimal numbers',
    icon: Icons.calculate,
    lessons: [
      Lesson(
        id: 'decimals_basics',
        title: 'Decimal Basics',
        content: '''Welcome to decimals! 

Decimals are numbers with a point that help us show parts smaller than one.

For example:
0.5 is the same as 1/2
0.25 is the same as 1/4

Remember:
• The point separates whole numbers from parts
• The more digits after the point, the more precise the number
''',
        exercises: [
          Exercise(
            id: 'dec1',
            question: 'Which decimal is equal to 1/2?',
            options: ['0.25', '0.5', '0.75', '1.0'],
            correctAnswer: 1,
            explanation: '0.5 is correct because half of 1 is 0.5',
          ),
        ],
      ),
    ],
  ),
  Topic(
    id: 'probability',
    title: 'Probability',
    description: 'Learn about chance and likelihood',
    icon: Icons.casino,
    lessons: [
      Lesson(
        id: 'probability_basics',
        title: 'Probability Basics',
        content: '''Time to learn about probability! 

Probability tells us how likely something is to happen.
We can express it as a fraction, decimal, or percentage.

For example:
• Rolling a 6 on a die: 1/6
• Getting heads on a coin: 1/2 or 50%

Remember:
• 0 means impossible
• 1 or 100% means certain
• The bigger the number, the more likely it is to happen
''',
        exercises: [
          Exercise(
            id: 'prob1',
            question: 'What is the probability of getting heads when flipping a coin?',
            options: ['1/4', '1/2', '1/3', '1/1'],
            correctAnswer: 1,
            explanation: '1/2 is correct because a coin has two sides, and one of them is heads',
          ),
          Exercise(
            id: 'prob2',
            question: 'When rolling a six-sided die, what is the probability of getting an even number?',
            options: [
              '1/6',
              '1/2',
              '2/3',
              '1'
            ],
            correctAnswer: 1,
            explanation: 'On a six-sided die, there are three even numbers (2, 4, 6) out of six numbers total, so the probability is 3/6 = 1/2.',
          ),
          Exercise(
            id: 'prob3',
            question: 'What is the probability of getting a number greater than 6 on a regular six-sided die?',
            options: [
              '0',
              '1/6',
              '1/2',
              '1'
            ],
            correctAnswer: 0,
            explanation: 'Since there are no numbers greater than 6 on a regular die, the probability is 0 (impossible).',
          ),
          Exercise(
            id: 'prob4',
            question: 'If you have a bag with 3 red marbles and 2 blue marbles, what is the probability of picking a red marble?',
            options: [
              '2/5',
              '3/5',
              '1/2',
              '1'
            ],
            correctAnswer: 1,
            explanation: 'There are 3 red marbles out of 5 total marbles, so the probability is 3/5.',
          ),
          Exercise(
            id: 'prob5',
            question: 'What is the probability of picking any card from a standard deck of 52 cards?',
            options: [
              '0',
              '1/52',
              '1',
              '52/52'
            ],
            correctAnswer: 2,
            explanation: 'Since you are picking any card, and all cards count, the probability is 52/52 = 1 (certain).',
          ),
          Exercise(
            id: 'prob6',
            question: 'In a bag of 10 candies, if 4 are chocolate, what is the probability of picking a non-chocolate candy?',
            options: [
              '4/10',
              '6/10',
              '1/10',
              '1'
            ],
            correctAnswer: 1,
            explanation: 'If 4 out of 10 are chocolate, then 6 out of 10 are non-chocolate, making the probability 6/10.',
          ),
          Exercise(
            id: 'prob7',
            question: 'What is the probability of rolling a 7 on a regular six-sided die?',
            options: [
              '1/6',
              '1/7',
              '0',
              '1'
            ],
            correctAnswer: 2,
            explanation: 'Since there is no 7 on a regular six-sided die, the probability is 0 (impossible).',
          ),
          Exercise(
            id: 'prob8',
            question: 'If you flip a coin twice, what is the probability of getting heads both times?',
            options: [
              '1/4',
              '1/2',
              '2/4',
              '1'
            ],
            correctAnswer: 0,
            explanation: 'For each flip, probability is 1/2. For both to be heads: 1/2 × 1/2 = 1/4.',
          ),
          Exercise(
            id: 'prob9',
            question: 'In a deck of cards, what is the probability of drawing a heart?',
            options: [
              '1/4',
              '1/2',
              '1/13',
              '13/52'
            ],
            correctAnswer: 0,
            explanation: 'There are 13 hearts in a deck of 52 cards, so the probability is 13/52 = 1/4.',
          ),
          Exercise(
            id: 'prob10',
            question: 'If you have 5 different colored balls, what is the probability of picking the blue one?',
            options: [
              '1/2',
              '1/3',
              '1/5',
              '1/4'
            ],
            correctAnswer: 2,
            explanation: 'With 5 different colored balls, the probability of picking any specific color is 1/5.',
          ),
          Exercise(
            id: 'prob11',
            question: 'What is the probability of rolling an odd number on a six-sided die?',
            options: [
              '1/6',
              '1/2',
              '2/3',
              '1'
            ],
            correctAnswer: 1,
            explanation: 'There are three odd numbers (1, 3, 5) out of six numbers, so the probability is 3/6 = 1/2.',
          ),
          Exercise(
            id: 'prob12',
            question: 'In a bag with 4 green and 6 yellow balls, what is the probability of NOT picking a green ball?',
            options: [
              '4/10',
              '6/10',
              '1/10',
              '1'
            ],
            correctAnswer: 1,
            explanation: 'There are 6 non-green (yellow) balls out of 10 total balls, so the probability is 6/10.',
          ),
          Exercise(
            id: 'prob13',
            question: 'What is the probability of drawing an ace from a standard deck of cards?',
            options: [
              '1/13',
              '4/52',
              '1/4',
              '1/52'
            ],
            correctAnswer: 1,
            explanation: 'There are 4 aces in a deck of 52 cards, so the probability is 4/52 = 1/13.',
          ),
          Exercise(
            id: 'prob14',
            question: 'If you roll two dice, what is the probability of getting the same number on both dice?',
            options: [
              '1/6',
              '1/12',
              '1/36',
              '1/3'
            ],
            correctAnswer: 0,
            explanation: 'There are 6 ways to get matching numbers out of 36 possible combinations, so the probability is 6/36 = 1/6.',
          ),
          Exercise(
            id: 'prob15',
            question: 'In a class of 30 students where 20 like pizza, what is the probability of randomly selecting a student who likes pizza?',
            options: [
              '1/3',
              '2/3',
              '20/30',
              '10/30'
            ],
            correctAnswer: 2,
            explanation: '20 students out of 30 like pizza, so the probability is 20/30 = 2/3.',
          ),
          Exercise(
            id: 'prob16',
            question: 'What is the probability of drawing a red card from a standard deck?',
            options: [
              '1/4',
              '1/2',
              '26/52',
              '13/52'
            ],
            correctAnswer: 1,
            explanation: 'Half of the cards in a deck are red (hearts and diamonds), so the probability is 26/52 = 1/2.',
          ),
          Exercise(
            id: 'prob17',
            question: 'If you spin a spinner with 8 equal sections, what is the probability of landing on any one specific section?',
            options: [
              '1/4',
              '1/8',
              '1/2',
              '2/8'
            ],
            correctAnswer: 1,
            explanation: 'With 8 equal sections, the probability of landing on any specific section is 1/8.',
          ),
          Exercise(
            id: 'prob18',
            question: 'In a bag of 15 marbles where 5 are striped, what is the probability of picking a non-striped marble?',
            options: [
              '5/15',
              '10/15',
              '1/3',
              '2/3'
            ],
            correctAnswer: 1,
            explanation: 'If 5 marbles are striped, then 10 are non-striped. So the probability is 10/15 = 2/3.',
          ),
          Exercise(
            id: 'prob19',
            question: 'What is the probability of NOT getting a 6 when rolling a die?',
            options: [
              '1/6',
              '5/6',
              '1/5',
              '4/6'
            ],
            correctAnswer: 1,
            explanation: 'There are 5 numbers that are not 6, out of 6 possible numbers, so the probability is 5/6.',
          ),
          Exercise(
            id: 'prob20',
            question: 'If you have a box with 12 chocolates and 3 are white chocolate, what is the probability of picking a non-white chocolate?',
            options: [
              '1/4',
              '3/4',
              '9/12',
              '3/12'
            ],
            correctAnswer: 2,
            explanation: 'If 3 are white chocolate, then 9 are non-white chocolate. The probability is 9/12 = 3/4.',
          ),
        ],
      ),
    ],
  ),
  Topic(
    id: 'data',
    title: 'Data',
    description: 'Understanding and analyzing data',
    icon: Icons.bar_chart,
    lessons: [
      Lesson(
        id: 'data_basics',
        title: 'Data Basics',
        content: '''Let's explore data! 

Data is information that we collect and organize. It's like collecting stickers or trading cards, but with numbers and facts!

Ways to Show Data:

1. Bar Graphs
   • Uses bars to show amounts
   • Taller bars = bigger numbers
   • Great for comparing things

2. Pie Charts
   • Shows parts of a whole
   • Like cutting a pie into pieces
   • Perfect for showing percentages

3. Line Graphs
   • Shows changes over time
   • Like drawing a path
   • Good for seeing trends

4. Pictographs
   • Uses pictures to represent data
   • Fun and easy to understand
   • Each picture = a certain amount

Real-Life Examples:
• Weather temperatures
• Test scores in class
• Favorite ice cream flavors
• Sports team statistics

Tips for Reading Data:
• Always check the labels
• Look at the scale
• Compare the sizes
• Look for patterns''',
        exercises: [
          Exercise(
            id: 'data1',
            question: 'Which type of graph is best for showing how temperature changes throughout the day?',
            options: ['Bar graph', 'Pie chart', 'Line graph', 'Pictograph'],
            correctAnswer: 2,
            explanation: 'A line graph is best for showing changes over time, like temperature throughout the day. It helps us see if the temperature is going up or down and spot patterns.',
          ),
        ],
      ),
    ],
  ),
  Topic(
    id: 'numbers',
    title: 'Numbers',
    description: 'Working with different types of numbers',
    icon: Icons.format_list_numbered,
    lessons: [
      Lesson(
        id: 'numbers_basics',
        title: 'Types of Numbers',
        content: '''Let's explore the world of numbers! 

Different Types of Numbers:

1. Whole Numbers (Natural Numbers)
   • Counting numbers: 1, 2, 3, 4...
   • Zero is also included
   • Used for counting things

2. Even Numbers
   • Can be divided by 2 exactly
   • End in 0, 2, 4, 6, or 8
   • Examples: 2, 4, 6, 8, 10...

3. Odd Numbers
   • Can't be divided by 2 exactly
   • End in 1, 3, 5, 7, or 9
   • Examples: 1, 3, 5, 7, 9...

4. Prime Numbers
   • Only divisible by 1 and itself
   • First few: 2, 3, 5, 7, 11...
   • 2 is the only even prime number!

5. Composite Numbers
   • Can be divided by numbers other than 1 and itself
   • Examples: 4, 6, 8, 9, 10...

Fun Facts:
• Every number greater than 1 is either prime or composite
• Zero is neither prime nor composite
• 1 is neither prime nor composite''',
        exercises: [
          Exercise(
            id: 'num1',
            question: 'Which of these is a prime number?',
            options: ['8', '9', '11', '12'],
            correctAnswer: 2,
            explanation: '11 is a prime number because it can only be divided evenly by 1 and itself (11). The other numbers are composite: 8=2×4, 9=3×3, 12=2×6.',
          ),
        ],
      ),
    ],
  ),
];
