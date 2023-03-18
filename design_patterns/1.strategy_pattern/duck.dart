import './fly_behavior.dart';
import './quack_behavior.dart';

abstract class Duck {
  FlyBehavior flyBehavior;
  QuackBehavior quackBehavior;

  Duck(this.flyBehavior, this.quackBehavior);

  void display();

  void performFly() {
    flyBehavior.fly();
  }

  void performQuack() {
    quackBehavior.quack();
  }
}

class MallardDuck extends Duck {
  MallardDuck() : super(FlyWithWings(), Quack());

  @override
  void display() {
    print('I\'m a real Mallard duck');
  }
}

class ModelDuck extends Duck {
  ModelDuck() : super(FlyNoWay(), muteQuack());

  @override
  void display() {
    print('I\'m a model duck');
  }
}
