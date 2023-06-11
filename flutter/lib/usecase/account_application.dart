
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/account/account.dart';
import '../domain/account/transactions/transactions.dart';
import '../domain/user/user_id.dart';
import '../infrastructure/account_repository_isar.dart';
import 'interface/account_repository.dart';

class AccountApplication extends StateNotifier<List<Account>> {
  final AccountRepository _accountRepository;
  AccountApplication({required AccountRepository accountRepository})
      : _accountRepository = accountRepository,
        super([]);

  Future<void> restore() async {
    final data = await _accountRepository.restore();
    if (data.isNotEmpty) {
      state = data
          .map((datum) => Account.restore(datum['accountId'] as String, datum['accountName'] as String,
              datum['accountBalance'] as int, datum['transactions'] as Transactions, datum['ownerId'] as UserId))
          .toList();
    }
  }
}

final accountApplicationProvider =
    StateNotifierProvider((ref) => AccountApplication(accountRepository: AccountRepositoryIsar()..restore()));
