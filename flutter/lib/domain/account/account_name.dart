import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class AccountName {
  final String _value;

  AccountName(this._value)
      : assert(_value.isNotEmpty),
        assert(_value != '');

  factory AccountName.create() => AccountName('新規アカウント');
  factory AccountName.update(String name) => AccountName(name);

  String get value => _value;
}