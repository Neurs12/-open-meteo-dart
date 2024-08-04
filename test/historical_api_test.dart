import 'package:open_meteo/open_meteo.dart';
import 'package:test/test.dart';

void main() {
  group('historical api', () {
    const latitude = 52.52, longitude = 13.405; // Berlin
    final startDate = DateTime(2022, 1, 1), endDate = DateTime(2022, 1, 2);

    group('constructor', () {
      test('with defaults', () {
        expect(() => HistoricalApi(), returnsNormally);
      });

      group('with custom', () {
        test('url/key', () {
          expect(
            () => HistoricalApi(
              apiUrl: 'https://api.custom.url/some/path',
              apiKey: 'idk-the-format-of-open-meteo-api-keys',
            ),
            returnsNormally,
          );
        });
        test('units', () {
          expect(
            () => HistoricalApi(
              windspeedUnit: WindspeedUnit.mph,
              temperatureUnit: TemperatureUnit.fahrenheit,
              precipitationUnit: PrecipitationUnit.inch,
            ),
            returnsNormally,
          );
        });
        test('elevation', () {
          expect(
            () => HistoricalApi(elevation: 10),
            returnsNormally,
          );
        });
        test('cell selection', () {
          expect(
            () => HistoricalApi(cellSelection: CellSelection.sea),
            returnsNormally,
          );
        });
      });
    });

    group('flatbuffers', () {
      late HistoricalApi api;
      setUp(() {
        api = HistoricalApi();
      });

      group('enum deserialization', () {
        test('for hourly data', () async {
          final response = await api.request(
            latitude: latitude,
            longitude: longitude,
            startDate: startDate,
            endDate: endDate,
            hourly: HourlyHistorical.values,
          );
          expect(
              response.hourlyData.keys, containsAll(HourlyHistorical.values));
        });
        test('for daily data', () async {
          final response = await api.request(
            latitude: latitude,
            longitude: longitude,
            startDate: startDate,
            endDate: endDate,
            daily: DailyHistorical.values,
          );
          expect(response.dailyData.keys, containsAll(DailyHistorical.values));
        });
      });

      group('get', () {
        test('hourly temperature', () async {
          final result = await api.request(
            latitude: latitude,
            longitude: longitude,
            startDate: startDate,
            endDate: endDate,
            hourly: [HourlyHistorical.temperature_2m],
          );
          final temperature =
              result.hourlyData[HourlyHistorical.temperature_2m];
          expect(temperature, isNotNull);
          expect(temperature!.data, isNotEmpty);
        });
        test('daily temperature max', () async {
          final result = await api.request(
            latitude: latitude,
            longitude: longitude,
            startDate: startDate,
            endDate: endDate,
            daily: [DailyHistorical.temperature_2m_max],
          );
          final temperature =
              result.dailyData[DailyHistorical.temperature_2m_max];
          expect(temperature, isNotNull);
          expect(temperature!.data, isNotEmpty);
        });
      });
    });

    group('json get', () {
      late HistoricalApi api;
      setUp(() {
        api = HistoricalApi();
      });

      test('hourly temperature', () async {
        final result = await api.rawRequest(
          latitude: latitude,
          longitude: longitude,
          startDate: startDate,
          endDate: endDate,
          hourly: [HourlyHistorical.temperature_2m],
        );
        expect(result['error'], isNot(true));
        expect(result['hourly'], isNotNull);
        expect(result['hourly']['temperature_2m'], isNotNull);
        expect(
          result['hourly']['time'].length,
          result['hourly']['temperature_2m'].length,
        );
      });
      test('daily temperature max', () async {
        final result = await api.rawRequest(
          latitude: latitude,
          longitude: longitude,
          startDate: startDate,
          endDate: endDate,
          daily: [DailyHistorical.temperature_2m_max],
        );
        expect(result['error'], isNot(true));
        expect(result['daily'], isNotNull);
        expect(result['daily']['temperature_2m_max'], isNotNull);
        expect(
          result['daily']['time'].length,
          result['daily']['temperature_2m_max'].length,
        );
      });
    });
  });
}