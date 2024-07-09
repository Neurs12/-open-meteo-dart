// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;

import '../enums/prefcls.dart';
import '../utils.dart';
import '../enums/daily.dart';
import '../enums/hourly.dart';

/// Discover how weather has shaped our world from 1940 until now.
///
/// https://open-meteo.com/en/docs/historical-weather-api/
class Historical {
  String? apiUrl = "https://api.open-meteo.com/v1/";
  final double latitude, longitude;
  double? elevation;
  DateTime? start_date, end_date;
  TemperatureUnit? temperature_unit;
  WindspeedUnit? windspeed_unit;
  PrecipitationUnit? precipitation_unit;
  CellSelection? cell_selection;
  String? apikey;

  Historical(
      {this.apiUrl,
      required this.latitude,
      required this.longitude,
      this.elevation,
      this.start_date,
      this.end_date,
      this.temperature_unit,
      this.windspeed_unit,
      this.precipitation_unit,
      this.apikey}) {
    apiUrl = apiUrl ?? "https://archive-api.open-meteo.com/v1/";
    Uri.parse(apiUrl!);

    throwCheckLatLng(latitude, longitude);
  }

  Future<Map<String, dynamic>> raw_request(
      {List<Hourly>? hourly, List<Daily>? daily}) async {
    String args = generateArgsDHCBase(daily, hourly, null) +
        createNullableParam("elevation", elevation) +
        createNullableParam(
            "start_date", start_date?.toIso8601String().split("T")[0]) +
        createNullableParam(
            "end_date", end_date?.toIso8601String().split("T")[0]) +
        createNullableParam("temperature_unit", temperature_unit?.name) +
        createNullableParam("windspeed_unit", windspeed_unit?.name) +
        createNullableParam("precipitation_unit", precipitation_unit?.name) +
        createNullableParam("cell_selection", cell_selection) +
        createNullableParam("apikey", apikey);

    // Send the request.
    return jsonDecode((await http.get(Uri.parse(
            "${apiUrl}archive?latitude=$latitude&longitude=$longitude&$args&timeformat=unixtime&timezone=auto")))
        .body);
  }
}
