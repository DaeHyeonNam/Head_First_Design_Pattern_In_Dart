import 'beverage.dart';
import 'condiment_decorator.dart';
import 'size.dart';

class Whip extends CondimentDecorator {
  Whip(Beverage beverage) : super(beverage);

  @override
  double cost() {
    if (beverage.getSize() == Size.Tall) {
      return 1.5 + beverage.cost();
    } else if (beverage.getSize() == Size.Grande) {
      return 1.75 + beverage.cost();
    } else {
      return 2 + beverage.cost();
    }
  }

  @override
  String getDescription() {
    return beverage.getDescription() + "Whip";
  }

  @override
  Size getSize() {
    return beverage.getSize();
  }
}
