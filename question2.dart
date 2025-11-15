import 'dart:math';

void main() {
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
  Map<String, int> studentScores = {};
  Random random = Random();

  for (String student in studentNames) {
    studentScores[student] = 60 + random.nextInt(41);
  }

  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  int total = 0;

  for (var entry in studentScores.entries) {
    if (entry.value > highestScore) {
      highestScore = entry.value;
      highestStudent = entry.key;
    }
    if (entry.value < lowestScore) {
      lowestScore = entry.value;
      lowestStudent = entry.key;
    }
    total += entry.value;
  }

  double averageScore = total / studentNames.length;

  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: ${averageScore.toStringAsFixed(2)}");

  for (String student in studentNames) {
    int score = studentScores[student]!;
    String category = "";
    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }
    print("$student: $score ($category)");
  }
}
