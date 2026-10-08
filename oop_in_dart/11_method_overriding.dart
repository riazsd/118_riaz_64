class Person {
  void displayInfo() => print('This is a person.');
}

class Teacher extends Person {
  @override
  void displayInfo() => print('This is a teacher.');
}

class Student extends Person {
  @override
  void displayInfo() => print('This is a student.');
}

void main() {
  final people = <Person>[Person(), Teacher(), Student()];
  for (final person in people) {
    person.displayInfo();
  }
}
