import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_balance_activity_date.dart';
import 'account_balance_activity_detail.dart';

@freezed
class AccountBalanceActivity {
  final AccountBalanceActivityDate _date;
  final List<AccountBalanceActivityDetail> _details;
  final int _sum;

  AccountBalanceActivity(this._date, this._details)
      : _sum = _details.fold(0, (previousValue, element) => previousValue + element.value);

  String get date => _date.value;
  List<Map<String, dynamic>> get activityDetails => _details.map((e) => {'name': e.name, 'value': e.value}).toList();
  int get sum => _sum;
}
