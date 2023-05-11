// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_transactions_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountTransactionsId {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountTransactionsIdCopyWith<AccountTransactionsId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountTransactionsIdCopyWith<$Res> {
  factory $AccountTransactionsIdCopyWith(AccountTransactionsId value,
          $Res Function(AccountTransactionsId) then) =
      _$AccountTransactionsIdCopyWithImpl<$Res, AccountTransactionsId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$AccountTransactionsIdCopyWithImpl<$Res,
        $Val extends AccountTransactionsId>
    implements $AccountTransactionsIdCopyWith<$Res> {
  _$AccountTransactionsIdCopyWithImpl(this._value, this._then);

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
abstract class _$$_AccountBalanceActivityIdCopyWith<$Res>
    implements $AccountTransactionsIdCopyWith<$Res> {
  factory _$$_AccountBalanceActivityIdCopyWith(
          _$_AccountBalanceActivityId value,
          $Res Function(_$_AccountBalanceActivityId) then) =
      __$$_AccountBalanceActivityIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_AccountBalanceActivityIdCopyWithImpl<$Res>
    extends _$AccountTransactionsIdCopyWithImpl<$Res,
        _$_AccountBalanceActivityId>
    implements _$$_AccountBalanceActivityIdCopyWith<$Res> {
  __$$_AccountBalanceActivityIdCopyWithImpl(_$_AccountBalanceActivityId _value,
      $Res Function(_$_AccountBalanceActivityId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AccountBalanceActivityId(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountBalanceActivityId implements _AccountBalanceActivityId {
  const _$_AccountBalanceActivityId(this.value)
      : assert(value.isNotEmpty),
        assert(Uuid.isValidUUID(fromString: value));

  @override
  final String value;

  @override
  String toString() {
    return 'AccountTransactionsId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountBalanceActivityId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBalanceActivityIdCopyWith<_$_AccountBalanceActivityId>
      get copyWith => __$$_AccountBalanceActivityIdCopyWithImpl<
          _$_AccountBalanceActivityId>(this, _$identity);
}

abstract class _AccountBalanceActivityId implements AccountTransactionsId {
  const factory _AccountBalanceActivityId(final String value) =
      _$_AccountBalanceActivityId;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_AccountBalanceActivityIdCopyWith<_$_AccountBalanceActivityId>
      get copyWith => throw _privateConstructorUsedError;
}
