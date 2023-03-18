class FlyBehavior {
  void fly() {
    print("I'm flying");
  }
}

class FlyWithWings implements FlyBehavior {
  @override
  void fly() {
    print("I'm flying with wings");
  }
}

class FlyNoWay implements FlyBehavior {
  @override
  void fly() {
    print("I can't fly");
  }
}
