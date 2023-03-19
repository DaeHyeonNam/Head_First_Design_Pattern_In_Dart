import 'pizza.dart';

abstract class PizzaStore {
  Pizza createPizza(String type);

  Pizza orderPizza(String type) {
    Pizza pizza = createPizza(type);

    pizza.cut();
    pizza.pack();

    return pizza;
  }
}
