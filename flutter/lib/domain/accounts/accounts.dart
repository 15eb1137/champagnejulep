import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain_service.dart';
import 'account.dart';

part 'accounts.freezed.dart';

@freezed
class Accounts with _$Accounts {
  const factory Accounts(List<Account> accounts) = _Accounts;
  factory Accounts.restore() => DomainService.getAccounts();
}
