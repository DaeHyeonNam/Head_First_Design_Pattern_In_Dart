import './duck.dart';
import 'fly_behavior.dart';
import 'quack_behavior.dart';

void main() {
  Duck mallard = MallardDuck();
  Duck model = ModelDuck();

  mallard.performFly();
  mallard.performQuack();

  model.performFly();
  model.performQuack();
  model.flyBehavior = FlyWithWings();
  model.performFly();
}
