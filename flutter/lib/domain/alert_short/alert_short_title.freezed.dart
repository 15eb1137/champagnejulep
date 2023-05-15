// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_short_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlertShortTitle {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlertShortTitleCopyWith<AlertShortTitle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertShortTitleCopyWith<$Res> {
  factory $AlertShortTitleCopyWith(AlertShortTitle value, $Res Function(AlertShortTitle) then) =
      _$AlertShortTitleCopyWithImpl<$Res, AlertShortTitle>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$AlertShortTitleCopyWithImpl<$Res, $Val extends AlertShortTitle> implements $AlertShortTitleCopyWith<$Res> {
  _$AlertShortTitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlertShortTitleCopyWith<$Res> implements $AlertShortTitleCopyWith<$Res> {
  factory _$$_AlertShortTitleCopyWith(_$_AlertShortTitle value, $Res Function(_$_AlertShortTitle) then) =
      __$$_AlertShortTitleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_AlertShortTitleCopyWithImpl<$Res> extends _$AlertShortTitleCopyWithImpl<$Res, _$_AlertShortTitle>
    implements _$$_AlertShortTitleCopyWith<$Res> {
  __$$_AlertShortTitleCopyWithImpl(_$_AlertShortTitle _value, $Res Function(_$_AlertShortTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AlertShortTitle(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AlertShortTitle implements _AlertShortTitle {
  const _$_AlertShortTitle(this.value) : assert(value.length < 20);

  @override
  final String value;

  @override
  String toString() {
    return 'AlertShortTitle(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlertShortTitle &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlertShortTitleCopyWith<_$_AlertShortTitle> get copyWith =>
      __$$_AlertShortTitleCopyWithImpl<_$_AlertShortTitle>(this, _$identity);
}

abstract class _AlertShortTitle implements AlertShortTitle {
  const factory _AlertShortTitle(final String value) = _$_AlertShortTitle;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_AlertShortTitleCopyWith<_$_AlertShortTitle> get copyWith => throw _privateConstructorUsedError;
}
