// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_provider_new.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherHash() => r'8b35feaee57c951280bdd8698738114c5cf2b515';

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
String _$loadingStateHash() => r'fa7dcdcdae0b8efad1e71fd9eabd5217f17237ab';

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
