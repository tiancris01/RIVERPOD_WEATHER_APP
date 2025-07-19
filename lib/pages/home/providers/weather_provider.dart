import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_riverpod_app/models/current_weather/current_weather.dart';
import 'package:weather_riverpod_app/models/mappers/weather_mapper.dart';
import 'package:weather_riverpod_app/repositories/providers/weather_repository.dart';
import 'package:weather_riverpod_app/entities/weather/weather_entity.dart';

part 'weather_provider.g.dart';

@Riverpod(keepAlive: true)
class Weather extends _$Weather {
  @override
  FutureOr<WeatherEntity?> build() {
    ref.onDispose(() {
      print('WeatherProvider disposed');
    });
    return Future<WeatherEntity?>.value(null);
  }

  Future<void> fetchWeather({required String city}) async {
    print('When calling build');
    state = AsyncLoading();

    state = await AsyncValue.guard(() async {
      final weatherRepository = ref.watch(weatherRepositoryProvider);
      final CurrentWeather currentWeather = await weatherRepository
          .fetchWeather(city: city);
      print('currentWeather: $currentWeather');
      return WeatherMapper.weatherMapper(currentWeather);
    });
  }
}

// @Riverpod(keepAlive: true)
// Future<List<WeatherEntity?>> weatherEntity(WeatherEntityRef ref) async {
//   ref.onDispose(() {
//     print('WeatherEntityProvider disposed');
//   });
//   final weatherState = await ref.watch(weatherProvider.future);
//   return [weatherState];
// }

// @riverpod
// FutureOr<void> weather(WeatherRef ref, {required String city}) async {
//   final weatherRepository = ref.watch(weatherRepositoryProvider);
//   final CurrentWeather currentWeather = await weatherRepository.fetchWeather(
//     city: city,
//   );
//   print('currentWeather: $currentWeather');
//   final WeatherEntity state = WeatherMapper.weatherMapper(currentWeather);
//   ref.read(weatherEntityProviderProvider.notifier).addWeather(state);
// }

// @Riverpod(keepAlive: true)
// class WeatherEntityProvider extends _$WeatherEntityProvider {
//   @override
//   List<WeatherEntity> build() {
//     return [];
//   }

//   void addWeather(WeatherEntity weather) {
//     state = [...state, weather];
//   }
// }
