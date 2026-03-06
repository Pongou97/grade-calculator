// Dart Grade Calculator – Milestone 1

class Student {
  String name;
  int grade;

  Student(this.name, this.grade);

  // Function 1: check if passing
  bool isPassing() => grade >= 50;

  // Function 2: display student info
  String displayInfo() => '$name has a grade of $grade';
}

// Custom higher-order function
void customForEach<T>(List<T> list, void Function(T) action) {
  for (var item in list) action(item);
}

void main() {
  // Sample students
  var students = [
    Student('Alice', 80),
    Student('Bob', 45),
    Student('Charlie', 60),
  ];

  // Lambda with custom higher-order function
  customForEach(students, (s) => print(s.displayInfo()));

  // Collection operation: filter passing students
  var passedStudents = students.where((s) => s.isPassing()).toList();
  print('Passed students: ${passedStudents.map((s) => s.name).toList()}');
}
