bool isEqual<T>(T a, T b) => a == b;

void main() {
  print(isEqual<int>(10, 10));
  print(isEqual<String>('Dart', 'Java'));
  print(isEqual<double>(3.14, 3.14));
}
