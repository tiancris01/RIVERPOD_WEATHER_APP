// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherEntityHash() => r'4efbef8f6a4ead42d52e40dfc5c038a8b55491f5';

/// See also [weatherEntity].
@ProviderFor(weatherEntity)
final weatherEntityProvider = FutureProvider<List<WeatherEntity?>>.internal(
  weatherEntity,
  name: r'weatherEntityProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherEntityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WeatherEntityRef = FutureProviderRef<List<WeatherEntity?>>;
String _$weatherHash() => r'8cf16ab9d5356c1f433ec29ae450d3ad7fe282ea';

/// See also [Weather].
@ProviderFor(Weather)
final weatherProvider = AsyncNotifierProvider<Weather, WeatherEntity?>.internal(
  Weather.new,
  name: r'weatherProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Weather = AsyncNotifier<WeatherEntity?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
