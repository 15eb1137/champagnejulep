// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountId {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountIdCopyWith<AccountId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountIdCopyWith<$Res> {
  factory $AccountIdCopyWith(AccountId value, $Res Function(AccountId) then) =
      _$AccountIdCopyWithImpl<$Res, AccountId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$AccountIdCopyWithImpl<$Res, $Val extends AccountId>
    implements $AccountIdCopyWith<$Res> {
  _$AccountIdCopyWithImpl(this._value, this._then);

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
abstract class _$$_AccountIdCopyWith<$Res> implements $AccountIdCopyWith<$Res> {
  factory _$$_AccountIdCopyWith(
          _$_AccountId value, $Res Function(_$_AccountId) then) =
      __$$_AccountIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_AccountIdCopyWithImpl<$Res>
    extends _$AccountIdCopyWithImpl<$Res, _$_AccountId>
    implements _$$_AccountIdCopyWith<$Res> {
  __$$_AccountIdCopyWithImpl(
      _$_AccountId _value, $Res Function(_$_AccountId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AccountId(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountId implements _AccountId {
  const _$_AccountId(this.value)
      : assert(value.isNotEmpty),
        assert(Uuid.isValidUUID(fromString: value));

  @override
  final String value;

  @override
  String toString() {
    return 'AccountId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountIdCopyWith<_$_AccountId> get copyWith =>
      __$$_AccountIdCopyWithImpl<_$_AccountId>(this, _$identity);
}

abstract class _AccountId implements AccountId {
  const factory _AccountId(final String value) = _$_AccountId;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_AccountIdCopyWith<_$_AccountId> get copyWith =>
      throw _privateConstructorUsedError;
}
