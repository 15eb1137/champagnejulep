import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_balance.freezed.dart';

@freezed
class AccountBalance with _$AccountBalance {
  @Assert('updatedAt.isBefore(DateTime.now())')
  const factory AccountBalance(int value, {required DateTime updatedAt}) = _AccountBalance;
  factory AccountBalance.create() => AccountBalance(0, updatedAt: DateTime.now());

  AccountBalance updateValueAtNow(int value) => copyWith(value: value, updatedAt: DateTime.now());
  AccountBalance updateValuePast(int diff) =>
      copyWith(value: value + diff, updatedAt: updatedAt);
}
