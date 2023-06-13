import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/account/account.dart';
import '../domain/user/user_id.dart';
import '../infrastructure/isar/account_repository_provider.dart';

part 'account_detail_application.g.dart';

@riverpod
class AccountDetailApplication extends _$AccountDetailApplication {
  Future<Account> _fetch() async {
    final account = await ref.watch(accountDetailDataProvider.call('AccountId').future);
    return Account.create(UserId(''));
  }

  @override
  Future<Account> build() async => _fetch();
}
