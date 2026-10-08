import 'dart:math';

class Shape {
  double calculateArea() => 0;
}

class Rectangle extends Shape {
  final double length;
  final double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() => length * width;
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calculateArea() => pi * radius * radius;
}

void main() {
  final Shape rectangle = Rectangle(10, 5);
  final Shape circle = Circle(7);
  print('Rectangle area: ${rectangle.calculateArea()}');
  print('Circle area: ${circle.calculateArea().toStringAsFixed(2)}');
}
