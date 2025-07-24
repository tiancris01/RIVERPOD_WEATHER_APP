// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherHash() => r'bff12c9f8607a7fb184a028ed000e6476d62a414';

/// See also [Weather].
@ProviderFor(Weather)
final weatherProvider =
    AutoDisposeAsyncNotifierProvider<Weather, List<WeatherEntity>>.internal(
      Weather.new,
      name: r'weatherProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$weatherHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$Weather = AutoDisposeAsyncNotifier<List<WeatherEntity>>;
String _$loadingStateHash() => r'b7e767c6ce631c496a35c823ebf201b65412ebf0';

/// See also [LoadingState].
@ProviderFor(LoadingState)
final loadingStateProvider =
    AutoDisposeNotifierProvider<LoadingState, bool>.internal(
      LoadingState.new,
      name: r'loadingStateProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$loadingStateHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$LoadingState = AutoDisposeNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
