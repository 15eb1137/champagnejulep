import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/account/account.dart';
import '../domain/account/transactions/transaction.dart';
import '../infrastructure/account_repository_provider.dart';

part 'account_detail_application.g.dart';

@riverpod
class AccountDetailApplication extends _$AccountDetailApplication {
  Future<Account> _fetch(String accountId) async {
    final account = await ref.watch(accountDetailDataProvider.call(accountId).future);
    if (account == null) {
      throw Exception('AccountDetailApplication#_fetch: account is not found. accountId: $accountId');
    } else {
      return Account.fromJson(account.toJson());
    }
  }

  @override
  Future<Account> build(String accountId) async => _fetch(accountId);

  Future<void> record(DateTime date, int amount) async {
    final repository = await ref.watch(accountRepositoryProvider.future);
    final accountData = await ref.watch(accountDetailDataProvider.call(state.value!.id.value).future);
    final account = Account.fromJson(accountData!.toJson());
    final recorded = account.record(Transaction.calced(date: date, amount: amount));
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final data = recorded.toJson();
      await repository.save(data);
      return _fetch(state.value!.id.value);
    });
  }
}
