class Employee {
  final String name;
  final String designation;
  final double salary;

  Employee(this.name, this.designation, this.salary);

  void displayInfo() {
    print('Name: $name');
    print('Designation: $designation');
    print('Salary: $salary');
    print('---');
  }
}

void main() {
  final employees = <Employee>[
    Employee('Rahim', 'Manager', 60000),
    Employee('Karim', 'Developer', 45000),
    Employee('Nila', 'Designer', 40000),
  ];

  for (final employee in employees) {
    employee.displayInfo();
  }
}
