import 'package:freezed_annotation/freezed_annotation.dart';
import "package:intl/intl.dart";

@freezed
class AccountBalanceActivityDate {
  final String _value;

  AccountBalanceActivityDate(this._value) : assert(DateTime.tryParse(_value) != null);
  factory AccountBalanceActivityDate.today() =>
      AccountBalanceActivityDate(DateFormat('yyyy-MM-dd').format(DateTime.now()));

  String get value => _value;
}
