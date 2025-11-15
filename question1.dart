double calculateBMI(double weight, double height) {
  if (height == 0) {
    throw ArgumentError('Height cannot be zero');
  }
  return weight / (height * height);
}

String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return 'A';
  } else if (score >= 80 && score <= 89) {
    return 'B';
  } else if (score >= 70 && score <= 79) {
    return 'C';
  } else if (score >= 60 && score <= 69) {
    return 'D';
  } else {
    return 'F';
  }
}

void main() {
  String name = 'John Doe';
  int age = 25;
  double height = 5.9;
  bool isStudent = true;

  print('Name: $name, Age: $age, Height: $height, Is Student: $isStudent');
  double bmi = calculateBMI(70, 1.76);
  print('BMI: ${bmi.toStringAsFixed(1)}');
  int score = 85;
  print('Grade: ${getGrade(score)}');
}
