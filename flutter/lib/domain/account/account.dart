import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_id.dart';
import 'account_balance.dart';
import 'account_balance_activitiy.dart';
import 'account_id.dart';
import 'account_name.dart';

@freezed
class Account {
  final AccountId _id;
  final AccountName _name;
  final AccountBalance _balance;
  final List<AccountBalanceActivity> _activities;
  final UserId _ownerId;

  Account(this._id, this._name, this._activities, this._ownerId)
      : _balance =
            _activities.fold(AccountBalance.create(), (previousValue, element) => AccountBalance.update(element.sum));
  factory Account.create(String userId) => Account(AccountId.create(), AccountName.create(), [], UserId(userId));
  factory Account.updateName(Account account, String name) =>
      Account(account._id, AccountName.update(name), [], account._ownerId);

  String get id => _id.value;
  String get name => _name.value;
  int get balance => _balance.value;
  List<Map<String, dynamic>> get activities =>
      _activities.map((e) => {'date': e.date, 'details': e.activityDetails, 'sum': e.sum}).toList();
  String get ownerId => _ownerId.value;
}
