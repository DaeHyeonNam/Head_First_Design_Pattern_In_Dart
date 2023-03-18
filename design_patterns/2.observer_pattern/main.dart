import 'current_conditions_display.dart';
import 'forecast_display.dart';
import 'weather_data.dart';

void main() {
  WeatherData weatherData = WeatherData();

  CurrentConditionsDisplay currentDisplay =
      CurrentConditionsDisplay(weatherData);
  ForcastDisplay forcastDisplay = ForcastDisplay(weatherData);

  weatherData.setMeasurements(80, 65, 30.4);
  weatherData.setMeasurements(82, 70, 29.2);
  weatherData.setMeasurements(78, 90, 29.2);
}
