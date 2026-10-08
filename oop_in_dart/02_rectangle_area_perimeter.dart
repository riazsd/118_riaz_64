class Rectangle {
  final double length;
  final double width;

  Rectangle(this.length, this.width);

  double calculateArea() => length * width;
  double calculatePerimeter() => 2 * (length + width);
}

void main() {
  final rectangle = Rectangle(10, 5);
  print('Area: ${rectangle.calculateArea()}');
  print('Perimeter: ${rectangle.calculatePerimeter()}');
}
