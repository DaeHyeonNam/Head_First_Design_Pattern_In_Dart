import 'Subject.dart';
import 'observer.dart';

class WeatherData implements Subject {
  late double temp;
  late double humidity;
  late double pressure;
  List<Observer> observers = [];

  @override
  void registerObserver(Observer observer) {
    observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    observers.remove(observer);
  }

  @override
  void notifyObservers() {
    for (int i = 0; i < observers.length; i++) {
      observers[i].update(temp, humidity, pressure);
    }
  }

  void measurementChanged() {
    notifyObservers();
  }

  void setMeasurements(double temp, double humidity, double pressure) {
    this.temp = temp;
    this.humidity = humidity;
    this.pressure = pressure;
    measurementChanged();
  }
}
