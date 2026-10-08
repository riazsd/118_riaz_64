class Car {
  Car.manual() {
    print('Manual car created.');
  }

  Car.automatic() {
    print('Automatic car created.');
  }
}

void main() {
  Car.manual();
  Car.automatic();
}
