// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) =>
    _CurrentWeather(
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$CurrentWeatherToJson(_CurrentWeather instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'sys': instance.sys,
      'name': instance.name,
    };

_Weather _$WeatherFromJson(Map<String, dynamic> json) => _Weather(
  main: json['main'] as String? ?? '',
  description: json['description'] as String? ?? '',
  icon: json['icon'] as String? ?? '',
);

Map<String, dynamic> _$WeatherToJson(_Weather instance) => <String, dynamic>{
  'main': instance.main,
  'description': instance.description,
  'icon': instance.icon,
};

_Main _$MainFromJson(Map<String, dynamic> json) => _Main(
  temp: (json['temp'] as num?)?.toDouble() ?? 0.0,
  tempMin: (json['temp_min'] as num?)?.toDouble() ?? 0.0,
  tempMax: (json['temp_max'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$MainToJson(_Main instance) => <String, dynamic>{
  'temp': instance.temp,
  'temp_min': instance.tempMin,
  'temp_max': instance.tempMax,
};

_Sys _$SysFromJson(Map<String, dynamic> json) =>
    _Sys(country: json['country'] as String? ?? '');

Map<String, dynamic> _$SysToJson(_Sys instance) => <String, dynamic>{
  'country': instance.country,
};
