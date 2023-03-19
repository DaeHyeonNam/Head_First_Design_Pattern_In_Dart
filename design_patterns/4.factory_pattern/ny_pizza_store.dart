import 'ny_style_cheeze_pizza.dart';
import 'pizza.dart';
import 'pizza_store.dart';

class NYPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String type) {
    print("new york style");
    if (type == "cheeze") {
      print('cheeze pizza');
      return NYStyleCheezePizza();
    }
    return Pizza();
  }
}
