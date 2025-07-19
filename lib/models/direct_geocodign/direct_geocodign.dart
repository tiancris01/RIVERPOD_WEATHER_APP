import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'direct_geocodign.freezed.dart';
part 'direct_geocodign.g.dart';

@freezed
abstract class DirectGeocodign with _$DirectGeocodign {
  const DirectGeocodign._();
  const factory DirectGeocodign({
    @Default('') String name,
    @Default(0.0) double lat,
    @Default(0.0) double lon,
    @Default('') String country,
  }) = _DirectGeocodign;

  factory DirectGeocodign.fromJson(Map<String, dynamic> json) =>
      _$DirectGeocodignFromJson(json);
}
