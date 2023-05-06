import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class AccountBalance {
  final int _value;
  final DateTime _updatedAt;

  AccountBalance(this._value, this._updatedAt) : assert(_updatedAt.isBefore(DateTime.now()));
  factory AccountBalance.create() => AccountBalance(0, DateTime.now());
  factory AccountBalance.update(int value) => AccountBalance(value, DateTime.now());

  int get value => _value;
  DateTime get updatedAt => _updatedAt;
}
