abstract class Person {
  final int id;
  final String name;

  Person(this.id, this.name);

  void displayInfo();
}

class Student extends Person {
  final String department;
  final List<Enrollment> _enrollments = [];

  Student(int id, String name, this.department) : super(id, name);

  List<Enrollment> get enrollments => List.unmodifiable(_enrollments);

  void addEnrollment(Enrollment enrollment) => _enrollments.add(enrollment);

  double get cgpa {
    if (_enrollments.isEmpty) return 0;
    var totalPoints = 0.0;
    var totalCredits = 0;

    for (final enrollment in _enrollments) {
      final gradePoint = enrollment.gradePoint;
      if (gradePoint != null) {
        totalPoints += gradePoint * enrollment.course.credit;
        totalCredits += enrollment.course.credit;
      }
    }

    return totalCredits == 0 ? 0 : totalPoints / totalCredits;
  }

  @override
  void displayInfo() {
    print('Student ID: $id');
    print('Name: $name');
    print('Department: $department');
    print('CGPA: ${cgpa.toStringAsFixed(2)}');
  }
}

class Course {
  final String code;
  final String title;
  final int credit;

  Course(this.code, this.title, this.credit);

  void displayInfo() => print('$code - $title ($credit credits)');
}

class Enrollment {
  final Student student;
  final Course course;
  double? gradePoint;

  Enrollment(this.student, this.course);

  void assignGrade(double point) {
    if (point < 0 || point > 4) {
      print('Grade point must be between 0 and 4.');
      return;
    }
    gradePoint = point;
  }

  void displayInfo() {
    print('${student.name} enrolled in ${course.code}');
    print('Course: ${course.title}');
    final displayedGrade = gradePoint?.toString() ?? 'Not assigned';
    print('Grade point: $displayedGrade');
  }
}

class StudentManagementSystem {
  final List<Student> _students = [];
  final List<Course> _courses = [];
  final List<Enrollment> _enrollments = [];

  void addStudent(Student student) => _students.add(student);
  void addCourse(Course course) => _courses.add(course);

  Student? findStudent(int id) {
    for (final student in _students) {
      if (student.id == id) return student;
    }
    return null;
  }

  Course? findCourse(String code) {
    for (final course in _courses) {
      if (course.code == code) return course;
    }
    return null;
  }

  Enrollment? enrollStudent(int studentId, String courseCode) {
    final student = findStudent(studentId);
    final course = findCourse(courseCode);
    if (student == null || course == null) {
      print('Student or course not found.');
      return null;
    }

    for (final enrollment in _enrollments) {
      if (enrollment.student.id == studentId &&
          enrollment.course.code == courseCode) {
        print('Student is already enrolled.');
        return null;
      }
    }

    final enrollment = Enrollment(student, course);
    _enrollments.add(enrollment);
    student.addEnrollment(enrollment);
    print('Enrollment successful.');
    return enrollment;
  }

  void displayStudents() {
    for (final Person person in _students) {
      person.displayInfo();
      print('--------------------');
    }
  }

  void displayEnrollments() {
    for (final enrollment in _enrollments) {
      enrollment.displayInfo();
      print('--------------------');
    }
  }
}

void main() {
  final system = StudentManagementSystem();
  final student = Student(101, 'Rahim', 'CSE');
  final oop = Course('CSE201', 'Object-Oriented Programming', 3);
  final database = Course('CSE202', 'Database Systems', 3);

  system.addStudent(student);
  system.addCourse(oop);
  system.addCourse(database);

  final first = system.enrollStudent(101, 'CSE201');
  final second = system.enrollStudent(101, 'CSE202');
  first?.assignGrade(3.75);
  second?.assignGrade(3.50);

  print('
Enrollment records:');
  system.displayEnrollments();
  print('Student information:');
  system.displayStudents();
}
