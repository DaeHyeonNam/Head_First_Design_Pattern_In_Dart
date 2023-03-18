import 'display_element.dart';
import 'observer.dart';
import 'weather_data.dart';

class ForcastDisplay implements Observer, DisplayElement {
  late double temp;
  late double humidity;

  WeatherData weatherData;
  ForcastDisplay(this.weatherData) {
    weatherData.registerObserver(this);
  }

  @override
  update() {
    temp = weatherData.temp;
    humidity = weatherData.humidity;

    display();
  }

  @override
  display() {
    print("temp: $temp, humidity: $humidity");
  }
}
