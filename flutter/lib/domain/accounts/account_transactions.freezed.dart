// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountTransactions {
  AccountTransactionsId get id => throw _privateConstructorUsedError;
  DateTime get transactionAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountTransactionsCopyWith<AccountTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountTransactionsCopyWith<$Res> {
  factory $AccountTransactionsCopyWith(
          AccountTransactions value, $Res Function(AccountTransactions) then) =
      _$AccountTransactionsCopyWithImpl<$Res, AccountTransactions>;
  @useResult
  $Res call(
      {AccountTransactionsId id,
      DateTime transactionAt,
      String title,
      int amount});

  $AccountTransactionsIdCopyWith<$Res> get id;
}

/// @nodoc
class _$AccountTransactionsCopyWithImpl<$Res, $Val extends AccountTransactions>
    implements $AccountTransactionsCopyWith<$Res> {
  _$AccountTransactionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionAt = null,
    Object? title = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AccountTransactionsId,
      transactionAt: null == transactionAt
          ? _value.transactionAt
          : transactionAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountTransactionsIdCopyWith<$Res> get id {
    return $AccountTransactionsIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountTransactionsCopyWith<$Res>
    implements $AccountTransactionsCopyWith<$Res> {
  factory _$$_AccountTransactionsCopyWith(_$_AccountTransactions value,
          $Res Function(_$_AccountTransactions) then) =
      __$$_AccountTransactionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountTransactionsId id,
      DateTime transactionAt,
      String title,
      int amount});

  @override
  $AccountTransactionsIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$_AccountTransactionsCopyWithImpl<$Res>
    extends _$AccountTransactionsCopyWithImpl<$Res, _$_AccountTransactions>
    implements _$$_AccountTransactionsCopyWith<$Res> {
  __$$_AccountTransactionsCopyWithImpl(_$_AccountTransactions _value,
      $Res Function(_$_AccountTransactions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionAt = null,
    Object? title = null,
    Object? amount = null,
  }) {
    return _then(_$_AccountTransactions(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AccountTransactionsId,
      transactionAt: null == transactionAt
          ? _value.transactionAt
          : transactionAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AccountTransactions implements _AccountTransactions {
  const _$_AccountTransactions(
      {required this.id,
      required this.transactionAt,
      required this.title,
      required this.amount});

  @override
  final AccountTransactionsId id;
  @override
  final DateTime transactionAt;
  @override
  final String title;
  @override
  final int amount;

  @override
  String toString() {
    return 'AccountTransactions(id: $id, transactionAt: $transactionAt, title: $title, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountTransactions &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionAt, transactionAt) ||
                other.transactionAt == transactionAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, transactionAt, title, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountTransactionsCopyWith<_$_AccountTransactions> get copyWith =>
      __$$_AccountTransactionsCopyWithImpl<_$_AccountTransactions>(
          this, _$identity);
}

abstract class _AccountTransactions implements AccountTransactions {
  const factory _AccountTransactions(
      {required final AccountTransactionsId id,
      required final DateTime transactionAt,
      required final String title,
      required final int amount}) = _$_AccountTransactions;

  @override
  AccountTransactionsId get id;
  @override
  DateTime get transactionAt;
  @override
  String get title;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_AccountTransactionsCopyWith<_$_AccountTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}
