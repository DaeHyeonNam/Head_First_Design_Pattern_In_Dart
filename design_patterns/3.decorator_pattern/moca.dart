import 'beverage.dart';
import 'condiment_decorator.dart';
import 'size.dart';

class Moca extends CondimentDecorator {
  Moca(Beverage beverage) : super(beverage);

  @override
  double cost() {
    if (beverage.getSize() == Size.Tall) {
      return 0.5 + beverage.cost();
    } else if (beverage.getSize() == Size.Grande) {
      return 0.75 + beverage.cost();
    } else {
      return 1 + beverage.cost();
    }
  }

  @override
  String getDescription() {
    return beverage.getDescription() + "Moca";
  }

  @override
  Size getSize() {
    return beverage.getSize();
  }
}
