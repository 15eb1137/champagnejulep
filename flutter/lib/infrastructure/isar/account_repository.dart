import 'package:isar/isar.dart';

import 'account_data.dart';
import 'fast_hash.dart';

class AccountRepository {
  const AccountRepository(this.isar);
  final Isar isar;

  Stream<AccountData?> watchAccount(String accountId) async* {
    final query = isar.accountDatas.where().isarIdEqualTo(fastHash(accountId));
    await for (final results in query.watch(fireImmediately: true)) {
      if (results.isNotEmpty) {
        yield results.first;
      } else {
        yield null;
      }
    }
  }

  Stream<List<AccountData>> watchAllAccounts() async* {
    final query = isar.accountDatas.where();
    await for (final results in query.watch(fireImmediately: true)) {
      if (results.isNotEmpty) {
        yield results;
      } else {
        yield [];
      }
    }
  }

  Future<void> save(Map<String, dynamic> data) async {
    await isar.writeTxn(() async {
      final accountData = AccountData.fromJson(data);
      await isar.accountDatas.put(accountData);
    });
  }
}
