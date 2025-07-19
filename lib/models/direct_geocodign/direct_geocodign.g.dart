// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_geocodign.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectGeocodign _$DirectGeocodignFromJson(Map<String, dynamic> json) =>
    _DirectGeocodign(
      name: json['name'] as String? ?? '',
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lon: (json['lon'] as num?)?.toDouble() ?? 0.0,
      country: json['country'] as String? ?? '',
    );

Map<String, dynamic> _$DirectGeocodignToJson(_DirectGeocodign instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'country': instance.country,
    };
