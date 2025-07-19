import 'package:riverpod_annotation/riverpod_annotation.dart';

extension AsyncValueX on AsyncValue {
  String get toStr {
    final content = [
      if (isLoading && this is! AsyncLoading) 'Loading: $isLoading',
      if (hasValue) 'Value: $value',
      if (hasError) ...['Error: $error'],
    ].join(', ');
    return '$runtimeType($content)';
  }

  String get props {
    return 'isLoading: $isLoading, isRefreshing: $isRefreshing, isReloading: $isReloading\n, hasValue: $hasValue, hasError: $hasError';
  }
}
