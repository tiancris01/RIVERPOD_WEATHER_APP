import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'custom_error.freezed.dart';

@freezed
abstract class CustomError with _$CustomError {
  const CustomError._();
  const factory CustomError({@Default('') String errMsg}) = _CustomError;
}
