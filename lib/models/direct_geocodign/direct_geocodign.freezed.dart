// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_geocodign.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectGeocodign implements DiagnosticableTreeMixin {

 String get name; double get lat; double get lon; String get country;
/// Create a copy of DirectGeocodign
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectGeocodignCopyWith<DirectGeocodign> get copyWith => _$DirectGeocodignCopyWithImpl<DirectGeocodign>(this as DirectGeocodign, _$identity);

  /// Serializes this DirectGeocodign to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DirectGeocodign'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('lat', lat))..add(DiagnosticsProperty('lon', lon))..add(DiagnosticsProperty('country', country));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectGeocodign&&(identical(other.name, name) || other.name == name)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,lat,lon,country);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DirectGeocodign(name: $name, lat: $lat, lon: $lon, country: $country)';
}


}

/// @nodoc
abstract mixin class $DirectGeocodignCopyWith<$Res>  {
  factory $DirectGeocodignCopyWith(DirectGeocodign value, $Res Function(DirectGeocodign) _then) = _$DirectGeocodignCopyWithImpl;
@useResult
$Res call({
 String name, double lat, double lon, String country
});




}
/// @nodoc
class _$DirectGeocodignCopyWithImpl<$Res>
    implements $DirectGeocodignCopyWith<$Res> {
  _$DirectGeocodignCopyWithImpl(this._self, this._then);

  final DirectGeocodign _self;
  final $Res Function(DirectGeocodign) _then;

/// Create a copy of DirectGeocodign
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? lat = null,Object? lon = null,Object? country = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectGeocodign].
extension DirectGeocodignPatterns on DirectGeocodign {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectGeocodign value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectGeocodign() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectGeocodign value)  $default,){
final _that = this;
switch (_that) {
case _DirectGeocodign():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectGeocodign value)?  $default,){
final _that = this;
switch (_that) {
case _DirectGeocodign() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  double lat,  double lon,  String country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectGeocodign() when $default != null:
return $default(_that.name,_that.lat,_that.lon,_that.country);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  double lat,  double lon,  String country)  $default,) {final _that = this;
switch (_that) {
case _DirectGeocodign():
return $default(_that.name,_that.lat,_that.lon,_that.country);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  double lat,  double lon,  String country)?  $default,) {final _that = this;
switch (_that) {
case _DirectGeocodign() when $default != null:
return $default(_that.name,_that.lat,_that.lon,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectGeocodign extends DirectGeocodign with DiagnosticableTreeMixin {
  const _DirectGeocodign({this.name = '', this.lat = 0.0, this.lon = 0.0, this.country = ''}): super._();
  factory _DirectGeocodign.fromJson(Map<String, dynamic> json) => _$DirectGeocodignFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  double lat;
@override@JsonKey() final  double lon;
@override@JsonKey() final  String country;

/// Create a copy of DirectGeocodign
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectGeocodignCopyWith<_DirectGeocodign> get copyWith => __$DirectGeocodignCopyWithImpl<_DirectGeocodign>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectGeocodignToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DirectGeocodign'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('lat', lat))..add(DiagnosticsProperty('lon', lon))..add(DiagnosticsProperty('country', country));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectGeocodign&&(identical(other.name, name) || other.name == name)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,lat,lon,country);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DirectGeocodign(name: $name, lat: $lat, lon: $lon, country: $country)';
}


}

/// @nodoc
abstract mixin class _$DirectGeocodignCopyWith<$Res> implements $DirectGeocodignCopyWith<$Res> {
  factory _$DirectGeocodignCopyWith(_DirectGeocodign value, $Res Function(_DirectGeocodign) _then) = __$DirectGeocodignCopyWithImpl;
@override @useResult
$Res call({
 String name, double lat, double lon, String country
});




}
/// @nodoc
class __$DirectGeocodignCopyWithImpl<$Res>
    implements _$DirectGeocodignCopyWith<$Res> {
  __$DirectGeocodignCopyWithImpl(this._self, this._then);

  final _DirectGeocodign _self;
  final $Res Function(_DirectGeocodign) _then;

/// Create a copy of DirectGeocodign
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? lat = null,Object? lon = null,Object? country = null,}) {
  return _then(_DirectGeocodign(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
