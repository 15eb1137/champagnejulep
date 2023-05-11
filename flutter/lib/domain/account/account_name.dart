import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_name.freezed.dart';

@freezed
class AccountName with _$AccountName {
  @Assert('value.isNotEmpty')
  const factory AccountName(String value) = _AccountName;
  factory AccountName.create() => AccountName('新しい口座');
}
