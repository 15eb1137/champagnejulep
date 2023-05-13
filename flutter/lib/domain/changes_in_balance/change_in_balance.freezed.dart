// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_in_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangeInBalance {
  DateTime get date => throw _privateConstructorUsedError;
  AccountBalance get scheduledBalance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeInBalanceCopyWith<ChangeInBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeInBalanceCopyWith<$Res> {
  factory $ChangeInBalanceCopyWith(
          ChangeInBalance value, $Res Function(ChangeInBalance) then) =
      _$ChangeInBalanceCopyWithImpl<$Res, ChangeInBalance>;
  @useResult
  $Res call({DateTime date, AccountBalance scheduledBalance});

  $AccountBalanceCopyWith<$Res> get scheduledBalance;
}

/// @nodoc
class _$ChangeInBalanceCopyWithImpl<$Res, $Val extends ChangeInBalance>
    implements $ChangeInBalanceCopyWith<$Res> {
  _$ChangeInBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? scheduledBalance = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledBalance: null == scheduledBalance
          ? _value.scheduledBalance
          : scheduledBalance // ignore: cast_nullable_to_non_nullable
              as AccountBalance,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountBalanceCopyWith<$Res> get scheduledBalance {
    return $AccountBalanceCopyWith<$Res>(_value.scheduledBalance, (value) {
      return _then(_value.copyWith(scheduledBalance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChangeInBalanceCopyWith<$Res>
    implements $ChangeInBalanceCopyWith<$Res> {
  factory _$$_ChangeInBalanceCopyWith(
          _$_ChangeInBalance value, $Res Function(_$_ChangeInBalance) then) =
      __$$_ChangeInBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, AccountBalance scheduledBalance});

  @override
  $AccountBalanceCopyWith<$Res> get scheduledBalance;
}

/// @nodoc
class __$$_ChangeInBalanceCopyWithImpl<$Res>
    extends _$ChangeInBalanceCopyWithImpl<$Res, _$_ChangeInBalance>
    implements _$$_ChangeInBalanceCopyWith<$Res> {
  __$$_ChangeInBalanceCopyWithImpl(
      _$_ChangeInBalance _value, $Res Function(_$_ChangeInBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? scheduledBalance = null,
  }) {
    return _then(_$_ChangeInBalance(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledBalance: null == scheduledBalance
          ? _value.scheduledBalance
          : scheduledBalance // ignore: cast_nullable_to_non_nullable
              as AccountBalance,
    ));
  }
}

/// @nodoc

class _$_ChangeInBalance extends _ChangeInBalance {
  const _$_ChangeInBalance({required this.date, required this.scheduledBalance})
      : super._();

  @override
  final DateTime date;
  @override
  final AccountBalance scheduledBalance;

  @override
  String toString() {
    return 'ChangeInBalance(date: $date, scheduledBalance: $scheduledBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeInBalance &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.scheduledBalance, scheduledBalance) ||
                other.scheduledBalance == scheduledBalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, scheduledBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeInBalanceCopyWith<_$_ChangeInBalance> get copyWith =>
      __$$_ChangeInBalanceCopyWithImpl<_$_ChangeInBalance>(this, _$identity);
}

abstract class _ChangeInBalance extends ChangeInBalance {
  const factory _ChangeInBalance(
      {required final DateTime date,
      required final AccountBalance scheduledBalance}) = _$_ChangeInBalance;
  const _ChangeInBalance._() : super._();

  @override
  DateTime get date;
  @override
  AccountBalance get scheduledBalance;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeInBalanceCopyWith<_$_ChangeInBalance> get copyWith =>
      throw _privateConstructorUsedError;
}
