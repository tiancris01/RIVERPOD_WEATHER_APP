import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_riverpod_app/repositories/weather_repository.dart';
import 'package:weather_riverpod_app/services/providers/weather_api_services_provider.dart';

part 'weather_repository.g.dart';

@riverpod
WeatherRepository weatherRepository(WeatherRepositoryRef ref) {
  return WeatherRepository(
    weatherApiServices: ref.watch(weatherApiServicesProvider),
  );
}
