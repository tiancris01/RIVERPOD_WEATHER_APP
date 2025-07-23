import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../models/mappers/weather_mapper.dart';
import '../../../repositories/providers/weather_repository.dart';
import '../../../entities/weather/weather_entity.dart';

part 'weather_provider.g.dart';

@riverpod
class Weather extends _$Weather {
  @override
  FutureOr<List<WeatherEntity>> build() => [];

  Future<void> addCity(String city) async {
    final currentList = state.valueOrNull ?? [];

    if (cityExists(city, currentList)) return;

    state = await AsyncValue.guard(() async {
      final repo = ref.read(weatherRepositoryProvider);
      final weather = await repo.fetchWeather(city: city);
      final entity = WeatherMapper.weatherMapper(weather);
      return [...currentList, entity];
    });
  }

  void removeCity(int index) {
    final list = state.valueOrNull;
    if (list == null || index < 0 || index >= list.length) return;
    state = AsyncValue.data([...list..removeAt(index)]);
  }

  void clearAll() => state = const AsyncValue.data([]);

  // Check if city already exists
  bool cityExists(String city, List<WeatherEntity> list) => list.any(
    (weather) =>
        weather.cityName.trim().toLowerCase() == city.trim().toLowerCase(),
  );
}

// Loading state provider
@riverpod
class LoadingState extends _$LoadingState {
  @override
  bool build() => false;

  void setLoading(bool loading) => state = loading;
}
