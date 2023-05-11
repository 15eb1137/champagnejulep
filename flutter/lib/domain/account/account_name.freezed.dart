// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountName {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountNameCopyWith<AccountName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountNameCopyWith<$Res> {
  factory $AccountNameCopyWith(
          AccountName value, $Res Function(AccountName) then) =
      _$AccountNameCopyWithImpl<$Res, AccountName>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$AccountNameCopyWithImpl<$Res, $Val extends AccountName>
    implements $AccountNameCopyWith<$Res> {
  _$AccountNameCopyWithImpl(this._value, this._then);

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
abstract class _$$_AccountNameCopyWith<$Res>
    implements $AccountNameCopyWith<$Res> {
  factory _$$_AccountNameCopyWith(
          _$_AccountName value, $Res Function(_$_AccountName) then) =
      __$$_AccountNameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_AccountNameCopyWithImpl<$Res>
    extends _$AccountNameCopyWithImpl<$Res, _$_AccountName>
    implements _$$_AccountNameCopyWith<$Res> {
  __$$_AccountNameCopyWithImpl(
      _$_AccountName _value, $Res Function(_$_AccountName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AccountName(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountName implements _AccountName {
  const _$_AccountName(this.value) : assert(value.isNotEmpty);

  @override
  final String value;

  @override
  String toString() {
    return 'AccountName(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountName &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountNameCopyWith<_$_AccountName> get copyWith =>
      __$$_AccountNameCopyWithImpl<_$_AccountName>(this, _$identity);
}

abstract class _AccountName implements AccountName {
  const factory _AccountName(final String value) = _$_AccountName;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_AccountNameCopyWith<_$_AccountName> get copyWith =>
      throw _privateConstructorUsedError;
}
