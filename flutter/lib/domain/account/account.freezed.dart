// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Account {
  AccountId get id => throw _privateConstructorUsedError;
  AccountName get name => throw _privateConstructorUsedError;
  AccountBalance get balance => throw _privateConstructorUsedError;
  Transactions get transactions => throw _privateConstructorUsedError;
  UserId get ownerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) = _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call({AccountId id, AccountName name, AccountBalance balance, Transactions transactions, UserId ownerId});

  $AccountIdCopyWith<$Res> get id;
  $AccountNameCopyWith<$Res> get name;
  $AccountBalanceCopyWith<$Res> get balance;
  $TransactionsCopyWith<$Res> get transactions;
  $UserIdCopyWith<$Res> get ownerId;
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? balance = null,
    Object? transactions = null,
    Object? ownerId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AccountId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as AccountName,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AccountBalance,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as Transactions,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as UserId,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountIdCopyWith<$Res> get id {
    return $AccountIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountNameCopyWith<$Res> get name {
    return $AccountNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountBalanceCopyWith<$Res> get balance {
    return $AccountBalanceCopyWith<$Res>(_value.balance, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionsCopyWith<$Res> get transactions {
    return $TransactionsCopyWith<$Res>(_value.transactions, (value) {
      return _then(_value.copyWith(transactions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIdCopyWith<$Res> get ownerId {
    return $UserIdCopyWith<$Res>(_value.ownerId, (value) {
      return _then(_value.copyWith(ownerId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$_AccountCopyWith(_$_Account value, $Res Function(_$_Account) then) = __$$_AccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountId id, AccountName name, AccountBalance balance, Transactions transactions, UserId ownerId});

  @override
  $AccountIdCopyWith<$Res> get id;
  @override
  $AccountNameCopyWith<$Res> get name;
  @override
  $AccountBalanceCopyWith<$Res> get balance;
  @override
  $TransactionsCopyWith<$Res> get transactions;
  @override
  $UserIdCopyWith<$Res> get ownerId;
}

/// @nodoc
class __$$_AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res, _$_Account>
    implements _$$_AccountCopyWith<$Res> {
  __$$_AccountCopyWithImpl(_$_Account _value, $Res Function(_$_Account) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? balance = null,
    Object? transactions = null,
    Object? ownerId = null,
  }) {
    return _then(_$_Account(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AccountId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as AccountName,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AccountBalance,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as Transactions,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as UserId,
    ));
  }
}

/// @nodoc

class _$_Account extends _Account {
  const _$_Account(
      {required this.id, required this.name, required this.balance, required this.transactions, required this.ownerId})
      : super._();

  @override
  final AccountId id;
  @override
  final AccountName name;
  @override
  final AccountBalance balance;
  @override
  final Transactions transactions;
  @override
  final UserId ownerId;

  @override
  String toString() {
    return 'Account(id: $id, name: $name, balance: $balance, transactions: $transactions, ownerId: $ownerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Account &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.transactions, transactions) || other.transactions == transactions) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, balance, transactions, ownerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountCopyWith<_$_Account> get copyWith => __$$_AccountCopyWithImpl<_$_Account>(this, _$identity);
}

abstract class _Account extends Account {
  const factory _Account(
      {required final AccountId id,
      required final AccountName name,
      required final AccountBalance balance,
      required final Transactions transactions,
      required final UserId ownerId}) = _$_Account;
  const _Account._() : super._();

  @override
  AccountId get id;
  @override
  AccountName get name;
  @override
  AccountBalance get balance;
  @override
  Transactions get transactions;
  @override
  UserId get ownerId;
  @override
  @JsonKey(ignore: true)
  _$$_AccountCopyWith<_$_Account> get copyWith => throw _privateConstructorUsedError;
}
