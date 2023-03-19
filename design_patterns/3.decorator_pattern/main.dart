import 'beverage.dart';
import 'espresso.dart';
import 'moca.dart';
import 'size.dart';
import 'whip.dart';

void main() {
  Beverage beverage = new Espresso(Size.Venti);
  print(beverage.getDescription());

  beverage = Whip(beverage);
  beverage = Moca(beverage);

  print("cost: ${beverage.cost()}");
  print("desciption: ${beverage.getDescription()}");
}
