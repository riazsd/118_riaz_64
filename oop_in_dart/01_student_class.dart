class Student {
  final String name;
  final int id;
  final double cgpa;

  Student(this.name, this.id, this.cgpa);

  void displayInfo() {
    print('Name: $name');
    print('ID: $id');
    print('CGPA: ${cgpa.toStringAsFixed(2)}');
  }
}

void main() {
  final student = Student('Rahim', 101, 3.75);
  student.displayInfo();
}
