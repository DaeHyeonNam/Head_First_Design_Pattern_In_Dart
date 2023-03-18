import 'Subject.dart';
import 'display_element.dart';
import 'observer.dart';
import 'weather_data.dart';

class CurrentConditionsDisplay implements Observer, DisplayElement {
  late double temp;
  late double humidity;
  late double pressure;
  late WeatherData weatherData;

  CurrentConditionsDisplay(WeatherData weatherData) {
    this.weatherData = weatherData;
    this.weatherData.registerObserver(this);
  }

  @override
  void update() {
    this.temp = weatherData.temp;
    this.humidity = weatherData.humidity;
    this.pressure = weatherData.pressure;

    display();
  }

  @override
  void display() {
    print("temp: $temp, humidity: $humidity, pressure: $pressure");
  }
}
