import 'package:open_meteo/models/weather.dart';
import 'package:open_meteo/open_meteo.dart';

void main() async {
  Weather weather = Weather(
    latitude: 52.52,
    longitude: 13.41,
    temperatureUnit: TemperatureUnit.celsius,
  );
  WeatherResponse result = await weather.request(
    current: [Current.temperature_2m],
  );
  WeatherParameterData temperature =
      result.currentWeatherData![Current.temperature_2m]!;
  double currentTemperature = temperature.data.values.first;

  print(currentTemperature);
}
