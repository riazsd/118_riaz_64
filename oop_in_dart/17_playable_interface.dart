abstract interface class Playable {
  void play();
}

class Football implements Playable {
  @override
  void play() => print('Playing football.');
}

class Cricket implements Playable {
  @override
  void play() => print('Playing cricket.');
}

void main() {
  final games = <Playable>[Football(), Cricket()];
  for (final game in games) {
    game.play();
  }
}
