class Box<T> {
  final T value;

  Box(this.value);

  void display() => print('Box contains: $value');
}

void main() {
  Box<int>(100).display();
  Box<String>('Hello Dart').display();
  Box<double>(3.14).display();
}
