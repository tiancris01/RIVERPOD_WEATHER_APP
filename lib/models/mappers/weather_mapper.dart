import 'package:weather_riverpod_app/entities/weather/weather_entity.dart';
import 'package:weather_riverpod_app/models/current_weather/current_weather.dart';

class WeatherMapper {
  static WeatherEntity weatherMapper(CurrentWeather cuarrentWeather) {
    return WeatherEntity(
      country: cuarrentWeather.sys.country,
      description: cuarrentWeather.weather[0].description,
      icon: cuarrentWeather.weather[0].icon,
      cityName: cuarrentWeather.name,
      temp: cuarrentWeather.main.temp,
      tempMax: cuarrentWeather.main.tempMax,
      tempMin: cuarrentWeather.main.tempMin,
    );
  }
}
