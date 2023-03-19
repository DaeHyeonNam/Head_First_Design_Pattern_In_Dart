import 'beverage.dart';
import 'size.dart';

class Espresso extends Beverage {
  late Size size;
  Espresso(this.size);

  @override
  String getDescription() {
    return "Espresso";
  }

  @override
  double cost() {
    if (size == Size.Tall) {
      return 0.69;
    } else if (size == Size.Grande) {
      return 0.89;
    } else {
      return 1.09;
    }
  }

  @override
  Size getSize() {
    return size;
  }
}
