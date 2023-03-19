import 'beverage.dart';

abstract class CondimentDecorator extends Beverage {
  Beverage beverage;
  CondimentDecorator(this.beverage);
}
