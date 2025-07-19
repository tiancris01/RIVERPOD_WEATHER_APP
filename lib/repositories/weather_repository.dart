import 'package:weather_riverpod_app/exeptions/weather_exeptions.dart';
import 'package:weather_riverpod_app/models/current_weather/current_weather.dart';
import 'package:weather_riverpod_app/models/custom_error/custom_error.dart';
import 'package:weather_riverpod_app/models/direct_geocodign/direct_geocodign.dart';
import 'package:weather_riverpod_app/services/weather_services.dart';

class WeatherRepository {
  final WeatherApiServices _weatherApiServices;

  const WeatherRepository({required WeatherApiServices weatherApiServices})
    : _weatherApiServices = weatherApiServices;

  Future<CurrentWeather> fetchWeather({required String city}) async {
    try {
      final DirectGeocodign directGeocoding = await _weatherApiServices
          .fetchDirectGeocoding(city: city);
      print('directGeocoding: $directGeocoding');

      final tempWeather = await _weatherApiServices.fetchCurrentWeather(
        directGeocoding,
      );

      final CurrentWeather currentWeather = tempWeather.copyWith(
        name: directGeocoding.name,
        sys: tempWeather.sys.copyWith(country: directGeocoding.country),
      );
      print('currentWeather: $currentWeather');
      return currentWeather;
    } on WeatherExeptions catch (e) {
      throw CustomError(errMsg: e.message);
    } catch (e) {
      throw CustomError(errMsg: e.toString());
    }
  }
}
