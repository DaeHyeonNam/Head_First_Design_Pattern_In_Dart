class QuackBehavior {
  void quack() {
    print('Quack');
  }
}

class Quack implements QuackBehavior {
  @override
  void quack() {
    print('Quack');
  }
}

class Squeak implements QuackBehavior {
  @override
  void quack() {
    print('Squeak');
  }
}

class muteQuack implements QuackBehavior {
  @override
  void quack() {
    print('<< Silence >>');
  }
}
