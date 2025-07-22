import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_riverpod_app/models/current_weather/current_weather.dart';
import 'package:weather_riverpod_app/models/mappers/weather_mapper.dart';
import 'package:weather_riverpod_app/repositories/providers/weather_repository.dart';
import 'package:weather_riverpod_app/entities/weather/weather_entity.dart';

part 'weather_provider_new.g.dart';

@riverpod
class Weather extends _$Weather {
  @override
  FutureOr<List<WeatherEntity>> build() {
    print('[WeatherProvider initialized]');
    ref.onDispose(() {
      print('[WeatherProvider] disposed');
    });
    return [];
  }

  Future<void> addCity(String city) async {
    final currentList = state.valueOrNull ?? [];

    // Check if city already exists
    final cityExists = currentList.any(
      (weather) =>
          weather.name.toLowerCase().trim() == city.toLowerCase().trim(),
    );

    if (cityExists) return;

    state = await AsyncValue.guard(() async {
      final weatherRepository = ref.watch(weatherRepositoryProvider);
      final CurrentWeather currentWeather = await weatherRepository
          .fetchWeather(city: city);
      print('currentWeather: $currentWeather');
      final weatherEntity = WeatherMapper.weatherMapper(currentWeather);
      return [...currentList, weatherEntity];
    });
  }

  void removeCity(int index) {
    final currentList = state.valueOrNull ?? [];
    if (index >= 0 && index < currentList.length) {
      final updatedList = [...currentList];
      updatedList.removeAt(index);
      state = AsyncValue.data(updatedList);
    }
  }

  void clearAll() {
    state = const AsyncValue.data([]);
  }
}

// Loading state provider
@riverpod
class LoadingState extends _$LoadingState {
  @override
  bool build() => false;

  void setLoading(bool loading) {
    state = loading;
  }
}
