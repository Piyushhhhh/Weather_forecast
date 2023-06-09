import 'package:equatable/equatable.dart';

import 'current_model.dart';
import 'daily_model.dart';

class WeatherData extends Equatable {
  const WeatherData({
    required this.lat,
    required this.lon,
    required this.timezone,
    required this.timezoneOffset,
    required this.current,
    this.hourly = const [],
    this.daily = const [],
  });

  final double lat;
  final double lon;
  final String timezone;
  final int timezoneOffset;
  final Current current;
  final List<Current> hourly;
  final List<Daily> daily;

  factory WeatherData.fromJson(Map<String, dynamic> json) => WeatherData(
        lat: (json["lat"] ?? 0).toDouble(),
        lon: (json["lon"] ?? 0).toDouble(),
        timezone: json["timezone"].toString(),
        timezoneOffset: json["timezone_offset"] ?? 0,
        current: Current.fromJson(json["current"] ?? {}),
        hourly: List<Current>.from(json["hourly"] != null
            ? json["hourly"].map((x) => Current.fromJson(x))
            : []),
        daily: List<Daily>.from(json["daily"] != null
            ? json["daily"].map((x) => Daily.fromJson(x))
            : []),
      );

  @override
  List<Object> get props => [
        lat,
        lon,
        timezone,
        timezoneOffset,
        current,
        hourly,
        daily,
      ];
}
