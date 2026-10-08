class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
  }
}

class Employee extends Person {
  final double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Salary: $salary');
  }
}

void main() {
  final employee = Employee('Rahim', 22, 50000);
  employee.displayInfo();
}
