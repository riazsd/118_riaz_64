abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() => print('Fan is turned on.');

  @override
  void turnOff() => print('Fan is turned off.');
}

void main() {
  final fan = Fan();
  fan.turnOn();
  fan.turnOff();
}
