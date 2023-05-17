// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shortage_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShortageTitle {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortageTitleCopyWith<ShortageTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortageTitleCopyWith<$Res> {
  factory $ShortageTitleCopyWith(
          ShortageTitle value, $Res Function(ShortageTitle) then) =
      _$ShortageTitleCopyWithImpl<$Res, ShortageTitle>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$ShortageTitleCopyWithImpl<$Res, $Val extends ShortageTitle>
    implements $ShortageTitleCopyWith<$Res> {
  _$ShortageTitleCopyWithImpl(this._value, this._then);

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
abstract class _$$_ShortageTitleCopyWith<$Res>
    implements $ShortageTitleCopyWith<$Res> {
  factory _$$_ShortageTitleCopyWith(
          _$_ShortageTitle value, $Res Function(_$_ShortageTitle) then) =
      __$$_ShortageTitleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_ShortageTitleCopyWithImpl<$Res>
    extends _$ShortageTitleCopyWithImpl<$Res, _$_ShortageTitle>
    implements _$$_ShortageTitleCopyWith<$Res> {
  __$$_ShortageTitleCopyWithImpl(
      _$_ShortageTitle _value, $Res Function(_$_ShortageTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ShortageTitle(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShortageTitle implements _ShortageTitle {
  const _$_ShortageTitle(this.value) : assert(value.length < 20);

  @override
  final String value;

  @override
  String toString() {
    return 'ShortageTitle(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShortageTitle &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShortageTitleCopyWith<_$_ShortageTitle> get copyWith =>
      __$$_ShortageTitleCopyWithImpl<_$_ShortageTitle>(this, _$identity);
}

abstract class _ShortageTitle implements ShortageTitle {
  const factory _ShortageTitle(final String value) = _$_ShortageTitle;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_ShortageTitleCopyWith<_$_ShortageTitle> get copyWith =>
      throw _privateConstructorUsedError;
}
