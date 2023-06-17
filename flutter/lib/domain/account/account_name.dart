import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_name.freezed.dart';

@freezed
class AccountName with _$AccountName {
  @Assert('value.isNotEmpty')
  factory AccountName(String value) = _AccountName;
  factory AccountName.create() => AccountName('新しい口座');
}

class AccountNameConverter implements JsonConverter<AccountName, String> {
  const AccountNameConverter();

  @override
  AccountName fromJson(String json) => AccountName(json);

  @override
  String toJson(AccountName object) => object.value;
}