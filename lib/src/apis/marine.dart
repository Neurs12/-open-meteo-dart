import '../api.dart';
import '../options.dart';
import '../response.dart';
import '../weather_api_openmeteo_sdk_generated.dart';

/// Hourly wave forecasts at 5 km resolution
///
/// https://open-meteo.com/en/docs/marine-weather-api/
class MarineApi extends BaseApi {
  final TemperatureUnit? temperatureUnit;
  final WindspeedUnit? windspeedUnit;
  final PrecipitationUnit? precipitationUnit;
  final LengthUnit? lengthUnit;
  final CellSelection? cellSelection;

  final int? pastDays, pastHours;
  final int? forecastDays, forecastHours;

  final DateTime? startDate, endDate;
  final DateTime? startHour, endHour;

  MarineApi({
    super.apiUrl = 'https://marine-api.open-meteo.com/v1/marine',
    super.apiKey,
    this.temperatureUnit,
    this.windspeedUnit,
    this.precipitationUnit,
    this.lengthUnit,
    this.cellSelection,
    this.pastDays,
    this.pastHours,
    this.forecastDays,
    this.forecastHours,
    this.startDate,
    this.endDate,
    this.startHour,
    this.endHour,
  });

  MarineApi copyWith({
    String? apiUrl,
    String? apiKey,
    TemperatureUnit? temperatureUnit,
    WindspeedUnit? windspeedUnit,
    PrecipitationUnit? precipitationUnit,
    LengthUnit? lengthUnit,
    CellSelection? cellSelection,
    int? pastDays,
    int? pastHours,
    int? forecastDays,
    int? forecastHours,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? startHour,
    DateTime? endHour,
  }) =>
      MarineApi(
        apiUrl: apiUrl ?? this.apiUrl,
        apiKey: apiKey ?? this.apiKey,
        temperatureUnit: temperatureUnit ?? this.temperatureUnit,
        windspeedUnit: windspeedUnit ?? this.windspeedUnit,
        precipitationUnit: precipitationUnit ?? this.precipitationUnit,
        lengthUnit: lengthUnit ?? this.lengthUnit,
        cellSelection: cellSelection ?? this.cellSelection,
        pastDays: pastDays ?? this.pastDays,
        pastHours: pastHours ?? this.pastHours,
        forecastDays: forecastDays ?? this.forecastDays,
        forecastHours: forecastHours ?? this.forecastHours,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        startHour: startHour ?? this.startHour,
        endHour: endHour ?? this.endHour,
      );

  Future<Map<String, dynamic>> requestJson({
    required double latitude,
    required double longitude,
    List<MarineCurrent>? current,
    List<MarineHourly>? hourly,
    List<MarineDaily>? daily,
  }) =>
      apiRequestJson(
        this,
        _queryParamMap(
          latitude: latitude,
          longitude: longitude,
          current: current,
          hourly: hourly,
          daily: daily,
        ),
      );

  Future<ApiResponse<MarineApi>> request({
    required double latitude,
    required double longitude,
    List<MarineCurrent>? current,
    List<MarineHourly>? hourly,
    List<MarineDaily>? daily,
  }) =>
      apiRequestFlatBuffer(
        this,
        _queryParamMap(
          latitude: latitude,
          longitude: longitude,
          current: current,
          hourly: hourly,
          daily: daily,
        ),
      ).then(
        (data) => ApiResponse.fromFlatBuffer(
          data,
          currentHashes: MarineCurrent.hashes,
          hourlyHashes: MarineHourly.hashes,
          dailyHashes: MarineDaily.hashes,
        ),
      );

  Map<String, dynamic> _queryParamMap({
    required double latitude,
    required double longitude,
    required List<MarineCurrent>? current,
    required List<MarineHourly>? hourly,
    required List<MarineDaily>? daily,
  }) =>
      {
        'latitude': latitude,
        'longitude': longitude,
        'current': current,
        'hourly': hourly,
        'daily': daily,
        'temperature_unit': temperatureUnit,
        'windspeed_unit': windspeedUnit,
        'precipitation_unit': precipitationUnit,
        'length_unit': lengthUnit,
        'cell_selection': cellSelection,
        'past_days': pastDays,
        'past_hours': pastHours,
        'forecast_days': forecastDays,
        'forecast_hours': forecastHours,
        'start_date': formatDate(startDate),
        'end_date': formatDate(endDate),
        'start_hour': formatTime(startHour),
        'end_hour': formatTime(endHour),
        'timeformat': 'unixtime',
        'timezone': 'auto',
      };
}

enum MarineCurrent with WeatherParameter<MarineApi, Current> {
  wave_height(Variable.wave_height),
  wave_direction(Variable.wave_direction),
  wave_period(Variable.wave_period),
  wind_wave_height(Variable.wind_wave_height),
  wind_wave_direction(Variable.wind_wave_direction),
  wind_wave_period(Variable.wind_wave_period),
  wind_wave_peak_period(Variable.wind_wave_peak_period),
  swell_wave_height(Variable.swell_wave_height),
  swell_wave_direction(Variable.swell_wave_direction),
  swell_wave_period(Variable.swell_wave_period),
  swell_wave_peak_period(Variable.swell_wave_peak_period),
  ocean_current_velocity(Variable.ocean_current_velocity),
  ocean_current_direction(Variable.ocean_current_direction);

  @override
  final Variable variable;

  const MarineCurrent(this.variable);

  static final Map<int, MarineCurrent> hashes =
      makeHashes(MarineCurrent.values);
}

enum MarineHourly with WeatherParameter<MarineApi, Hourly> {
  wave_height(Variable.wave_height),
  wave_direction(Variable.wave_direction),
  wave_period(Variable.wave_period),
  wind_wave_height(Variable.wind_wave_height),
  wind_wave_direction(Variable.wind_wave_direction),
  wind_wave_period(Variable.wind_wave_period),
  wind_wave_peak_period(Variable.wind_wave_peak_period),
  swell_wave_height(Variable.swell_wave_height),
  swell_wave_direction(Variable.swell_wave_direction),
  swell_wave_period(Variable.swell_wave_period),
  swell_wave_peak_period(Variable.swell_wave_peak_period),
  ocean_current_velocity(Variable.ocean_current_velocity),
  ocean_current_direction(Variable.ocean_current_direction);

  @override
  final Variable variable;

  const MarineHourly(this.variable);

  static final Map<int, MarineHourly> hashes = makeHashes(MarineHourly.values);
}

enum MarineDaily with WeatherParameter<MarineApi, Daily> {
  wave_height_max(Variable.wave_height, aggregation: Aggregation.maximum),
  wave_direction_dominant(Variable.wave_direction,
      aggregation: Aggregation.dominant),
  wave_period_max(Variable.wave_period, aggregation: Aggregation.maximum),
  wind_wave_height_max(Variable.wind_wave_height,
      aggregation: Aggregation.maximum),
  wind_wave_direction_dominant(Variable.wind_wave_direction,
      aggregation: Aggregation.dominant),
  wind_wave_period_max(Variable.wind_wave_period,
      aggregation: Aggregation.maximum),
  wind_wave_peak_period_max(Variable.wind_wave_peak_period,
      aggregation: Aggregation.maximum),
  swell_wave_height_max(Variable.swell_wave_height,
      aggregation: Aggregation.maximum),
  swell_wave_direction_dominant(Variable.swell_wave_direction,
      aggregation: Aggregation.dominant),
  swell_wave_period_max(Variable.swell_wave_period,
      aggregation: Aggregation.maximum),
  swell_wave_peak_period_max(Variable.swell_wave_peak_period,
      aggregation: Aggregation.maximum);

  @override
  final Variable variable;

  @override
  final Aggregation aggregation;

  const MarineDaily(
    this.variable, {
    this.aggregation = Aggregation.none,
  });

  static final Map<int, MarineDaily> hashes = makeHashes(MarineDaily.values);
}
