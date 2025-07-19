// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherEntityHash() => r'c75464e0d0f39b4ac9ee5a76a9f065262963c817';

/// See also [weatherEntity].
@ProviderFor(weatherEntity)
final weatherEntityProvider =
    AutoDisposeFutureProvider<List<WeatherEntity?>>.internal(
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
typedef WeatherEntityRef = AutoDisposeFutureProviderRef<List<WeatherEntity?>>;
String _$weatherHash() => r'fe61ad79151b7a5c0c632a7e8e82e3df97ae3c10';

/// See also [Weather].
@ProviderFor(Weather)
final weatherProvider =
    AutoDisposeAsyncNotifierProvider<Weather, WeatherEntity?>.internal(
      Weather.new,
      name: r'weatherProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$weatherHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$Weather = AutoDisposeAsyncNotifier<WeatherEntity?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
