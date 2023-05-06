import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class AccountBalanceActivityDetail {
  final String _name;
  final int _value;

  AccountBalanceActivityDetail(this._name, this._value);

  String get name => _name;
  int get value => _value;
}
