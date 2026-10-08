abstract class Shape {
  double calculateArea();
}

class Square extends Shape {
  final double side;

  Square(this.side);

  @override
  double calculateArea() => side * side;
}

void main() {
  final square = Square(6);
  print('Square area: ${square.calculateArea()}');
}
