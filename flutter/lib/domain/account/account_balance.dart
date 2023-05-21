import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_balance.freezed.dart';

@freezed
class AccountBalance with _$AccountBalance {
  const AccountBalance._();
  const factory AccountBalance(int value, {required DateTime date}) = _AccountBalance;
  factory AccountBalance.create() => AccountBalance(0, date: DateTime.now());

  AccountBalance changeValue(int newValue) => copyWith(value: newValue);
  AccountBalance changeDateNow() => copyWith(date: DateTime.now());
  AccountBalance changeValueAtDate(int newValue, DateTime newDate) => copyWith(value: newValue, date: newDate);
  AccountBalance changeValueByCalc(int diff) => copyWith(value: value + diff);
}
