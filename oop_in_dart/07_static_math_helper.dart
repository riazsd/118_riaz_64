class MathHelper {
  static int add(int a, int b) => a + b;
  static int multiply(int a, int b) => a * b;
}

void main() {
  print('Addition: ${MathHelper.add(10, 20)}');
  print('Multiplication: ${MathHelper.multiply(10, 20)}');
}
