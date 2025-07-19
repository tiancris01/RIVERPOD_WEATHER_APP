// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  final String name;
  final String country;
  final double temp;
  final double tempMax;
  final double tempMin;
  final String icon;
  final String description;

  const WeatherEntity({
    required this.name,
    required this.country,
    required this.temp,
    required this.tempMax,
    required this.tempMin,
    required this.icon,
    required this.description,
  });

  @override
  List<Object?> get props => [
    name,
    country,
    temp,
    tempMax,
    tempMin,
    icon,
    description,
  ];
}
