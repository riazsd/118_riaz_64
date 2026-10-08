abstract interface class Flyable {
  void fly();
}

abstract interface class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() => print('Duck is flying.');

  @override
  void swim() => print('Duck is swimming.');
}

void main() {
  final duck = Duck();
  duck.fly();
  duck.swim();
}
