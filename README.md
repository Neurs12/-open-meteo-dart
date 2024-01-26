# Open-Meteo API SDK (Rewritten)
A fast, asynchronous Dart/Flutter SDK package for Open-Meteo API.

All [features from Open-Meteo API](https://open-meteo.com/en/features) are available with fully (some limited) implementation.

> [!CAUTION]
This SDK simplified hourly and daily values in across all 7 features that needed it into 2 enum files. Remember to read the docs carefully before use it.

> [!NOTE]
All parameters are shipped from the official [Open-Meteo's docs](https://open-meteo.com/en/docs#api-documentation).

## Usage & Docs
> [!NOTE]
There're 9 classes represent 9 features available in Open-Meteo API: `Weather`, `Historical`, `Ensemble`, `Climate`, `Marine`, `AirQuality`, `Geocoding`, `Elevation` and `Flood`.

Out of all classes, there're 7 classes that requires either daily or hourly parameter, they will all have a similar style of implementation. For example, this is how to get current temperature from London, 2 meters above sea level using `Weather`:
```dart
var wea = Weather(latitude: 52.52, longitude: 13.41);
var hourly = [Hourly.temperature_2m];
var result = await wea.raw_request(hourly: hourly);
```
> [!TIP]
`raw_request` will return a JSON, which is the result if nothing is wrong.

Only two exception are `Geocoding` and `Elevation`:
```dart
var result = await Geocoding.search(name: "Somewhere");
```
```dart
var result = await Elevation.search(latitude: 52.52, longitude: 13.41);
```