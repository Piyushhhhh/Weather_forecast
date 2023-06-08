import 'package:fire_weather/core/constants/app_constants.dart';
import 'package:fire_weather/core/network/api_base_helper.dart';
import 'package:fire_weather/core/utils/secrets.dart';

class CityRepository {
  final _apiBaseHelper = ApiBaseHelper();

  Future<dynamic> getCityWeather({
    required String city,
    String unit = 'metric',
  }) async {
    final query = "q=$city&appid=$openWeatherApiKey&units=$unit";
    final path = "$baseUrl/weather?$query";

    final response = await _apiBaseHelper.get(path);
    return response;
  }
}
