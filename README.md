# grade-calculator
Grade Calculator in Dart: add students, check passing status, display info, and practice functional programming with higher-order functions and collection operations like map and filter.
Grade Calculator – Dart Project

Project Overview

This is a Grade Calculator built in Dart. Users can add students with their grades, check if they are passing, and display formatted student information. The project demonstrates functional programming concepts, including higher-order functions, lambdas, and collection operations (map, filter, forEach).

Features
 • Add student names and grades
 • Validate if a student is passing
 • Display formatted student info
 • Filter students who passed
 • Use custom higher-order functions and lambdas

Technologies
 • Dart
 • Command-line application (runs in any Dart environment)class Student {
  String name;
  int grade;

  Student(this.name, this.grade);

  bool isPassing() => grade >= 50;
  String displayInfo() => '$name has a grade of $grade';
}

void customForEach<T>(List<T> list, void Function(T) action) {
  for (var item in list) action(item);
}

void main() {
  var students = [
    Student('Alice', 80),
    Student('Bob', 45),
    Student('Charlie', 60),
  ];

  customForEach(students, (s) => print(s.displayInfo()));
  var passedStudents = students.where((s) => s.isPassing()).toList();
  print('Passed students: ${passedStudents.map((s) => s.name).toList()}');
}How to Run
 1. Install Dart: https://dart.dev/get-dart
 2. Open terminal in the project folder
 3. Run:
 4. License

This project is for academic purposes.
