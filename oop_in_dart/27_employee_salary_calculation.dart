abstract class Company {
  final String name;
  final double baseSalary;

  Company(this.name, this.baseSalary);

  double calculateMonthlySalary();

  void displaySalary() {
    print('$name: ${calculateMonthlySalary().toStringAsFixed(2)}');
  }
}

class Manager extends Company {
  final double bonus;

  Manager(String name, double baseSalary, this.bonus)
      : super(name, baseSalary);

  @override
  double calculateMonthlySalary() => baseSalary + bonus;
}

class Developer extends Company {
  final double overtimeHours;
  final double hourlyRate;

  Developer(
    String name,
    double baseSalary,
    this.overtimeHours,
    this.hourlyRate,
  ) : super(name, baseSalary);

  @override
  double calculateMonthlySalary() => baseSalary + overtimeHours * hourlyRate;
}

void main() {
  final employees = <Company>[
    Manager('Rahim', 60000, 10000),
    Developer('Karim', 50000, 20, 300),
  ];

  for (final employee in employees) {
    employee.displaySalary();
  }
}
