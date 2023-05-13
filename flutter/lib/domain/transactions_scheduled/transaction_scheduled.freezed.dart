// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_scheduled.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionScheduled {
  AccountId get accountId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get calcAuto => throw _privateConstructorUsedError;
  DateTime get transactionAt => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionScheduledCopyWith<TransactionScheduled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionScheduledCopyWith<$Res> {
  factory $TransactionScheduledCopyWith(TransactionScheduled value,
          $Res Function(TransactionScheduled) then) =
      _$TransactionScheduledCopyWithImpl<$Res, TransactionScheduled>;
  @useResult
  $Res call(
      {AccountId accountId,
      String title,
      bool calcAuto,
      DateTime transactionAt,
      int value});

  $AccountIdCopyWith<$Res> get accountId;
}

/// @nodoc
class _$TransactionScheduledCopyWithImpl<$Res,
        $Val extends TransactionScheduled>
    implements $TransactionScheduledCopyWith<$Res> {
  _$TransactionScheduledCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? title = null,
    Object? calcAuto = null,
    Object? transactionAt = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as AccountId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      calcAuto: null == calcAuto
          ? _value.calcAuto
          : calcAuto // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionAt: null == transactionAt
          ? _value.transactionAt
          : transactionAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountIdCopyWith<$Res> get accountId {
    return $AccountIdCopyWith<$Res>(_value.accountId, (value) {
      return _then(_value.copyWith(accountId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionSheduledCopyWith<$Res>
    implements $TransactionScheduledCopyWith<$Res> {
  factory _$$_TransactionSheduledCopyWith(_$_TransactionSheduled value,
          $Res Function(_$_TransactionSheduled) then) =
      __$$_TransactionSheduledCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountId accountId,
      String title,
      bool calcAuto,
      DateTime transactionAt,
      int value});

  @override
  $AccountIdCopyWith<$Res> get accountId;
}

/// @nodoc
class __$$_TransactionSheduledCopyWithImpl<$Res>
    extends _$TransactionScheduledCopyWithImpl<$Res, _$_TransactionSheduled>
    implements _$$_TransactionSheduledCopyWith<$Res> {
  __$$_TransactionSheduledCopyWithImpl(_$_TransactionSheduled _value,
      $Res Function(_$_TransactionSheduled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? title = null,
    Object? calcAuto = null,
    Object? transactionAt = null,
    Object? value = null,
  }) {
    return _then(_$_TransactionSheduled(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as AccountId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      calcAuto: null == calcAuto
          ? _value.calcAuto
          : calcAuto // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionAt: null == transactionAt
          ? _value.transactionAt
          : transactionAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TransactionSheduled extends _TransactionSheduled {
  const _$_TransactionSheduled(
      {required this.accountId,
      required this.title,
      required this.calcAuto,
      required this.transactionAt,
      required this.value})
      : super._();

  @override
  final AccountId accountId;
  @override
  final String title;
  @override
  final bool calcAuto;
  @override
  final DateTime transactionAt;
  @override
  final int value;

  @override
  String toString() {
    return 'TransactionScheduled(accountId: $accountId, title: $title, calcAuto: $calcAuto, transactionAt: $transactionAt, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionSheduled &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.calcAuto, calcAuto) ||
                other.calcAuto == calcAuto) &&
            (identical(other.transactionAt, transactionAt) ||
                other.transactionAt == transactionAt) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, accountId, title, calcAuto, transactionAt, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionSheduledCopyWith<_$_TransactionSheduled> get copyWith =>
      __$$_TransactionSheduledCopyWithImpl<_$_TransactionSheduled>(
          this, _$identity);
}

abstract class _TransactionSheduled extends TransactionScheduled {
  const factory _TransactionSheduled(
      {required final AccountId accountId,
      required final String title,
      required final bool calcAuto,
      required final DateTime transactionAt,
      required final int value}) = _$_TransactionSheduled;
  const _TransactionSheduled._() : super._();

  @override
  AccountId get accountId;
  @override
  String get title;
  @override
  bool get calcAuto;
  @override
  DateTime get transactionAt;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionSheduledCopyWith<_$_TransactionSheduled> get copyWith =>
      throw _privateConstructorUsedError;
}
