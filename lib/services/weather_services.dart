import 'package:dio/dio.dart';

import '../exeptions/weather_exeptions.dart';
import '../models/current_weather/current_weather.dart';
import '../models/direct_geocodign/direct_geocodign.dart';
import 'dio_error_handler.dart';

class WeatherApiServices {
  final Dio _dio;
  const WeatherApiServices({required Dio dio}) : _dio = dio;

  Future<DirectGeocodign> fetchDirectGeocoding({required String city}) async {
    try {
      final Response response = await _dio.get(
        '/geo/1.0/direct',
        queryParameters: {'q': city},
      );
      if (response.statusCode != 200) {
        throw dioErrorHandler(response);
      }
      if (response.data.isEmpty) {
        throw WeatherExeptions('Cannot get the location of $city');
      }
      final directGeocodign = DirectGeocodign.fromJson(response.data[0]);
      return directGeocodign;
    } catch (e) {
      rethrow;
    }
  }

  Future<CurrentWeather> fetchCurrentWeather(
    DirectGeocodign directGeocoding,
  ) async {
    try {
      final Response response = await _dio.get(
        '/data/2.5/weather',
        queryParameters: {
          'lat': '${directGeocoding.lat}',
          'lon': '${directGeocoding.lon}',
        },
      );
      if (response.statusCode != 200) {
        throw dioErrorHandler(response);
      }
      final currentWeather = CurrentWeather.fromJson(response.data);
      return currentWeather;
    } catch (e) {
      rethrow;
    }
  }
}
