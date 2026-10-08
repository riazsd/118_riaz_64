class Temperature {
  double _celsius = 0;

  set temp(double celsius) => _celsius = celsius;
  double get temp => (_celsius * 9 / 5) + 32;
}

void main() {
  final temperature = Temperature()..temp = 25;
  print('Temperature in Fahrenheit: ${temperature.temp}°F');
}
