import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/account/account.dart';
import '../infrastructure/isar/account_repository_provider.dart';
import 'user_application.dart';

part 'account_application.g.dart';

@riverpod
class AccountApplication extends _$AccountApplication {
  Future<List<Account>> _fetch() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final data = await ref.read(accountDataProvider.future);
      final accounts = data.map((datum) => Account.fromJson(datum.toJson())).toList();
      return accounts;
    });
    return state.value!;
  }

  @override
  Future<List<Account>> build() async => _fetch();

  Future<void> accountSetup() async {
    final repository = await ref.watch(accountRepositoryProvider.future);
    final user = await ref.watch(userApplicationProvider.future);
    final newAccount = Account.create(user.id);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final data = newAccount.toJson();
      await repository.save(data);
      return _fetch();
    });
  }
}
