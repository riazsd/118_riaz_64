T findLargest<T extends num>(T a, T b) => a > b ? a : b;

void main() {
  print(findLargest<int>(10, 20));
  print(findLargest<double>(15.5, 12.3));
}
