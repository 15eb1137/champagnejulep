import 'package:champagnejulep/domain/accounts/account_transactions.dart';
import 'package:champagnejulep/domain/accounts/accounts.dart';
import 'package:champagnejulep/domain/domain_repository.dart';
import 'package:champagnejulep/domain/transactions_scheduled/transactions_scheduled.dart';
import 'package:champagnejulep/domain/user/user.dart';
import 'package:champagnejulep/domain/user/user_premium.dart';

class DomainRepositoryTest extends DomainRepository {
  @override
  void saveUser({required String id, required UserPremiumState premium}) {}

  @override
  User getUser() => User.create();

  @override
  void saveTransactionScheduled(
      {required String accountId,
      required String title,
      required bool calcAuto,
      required DateTime transactionAt,
      required int value}) {}

  @override
  TransactionsScheduled getTransactionsScheduled() => TransactionsScheduled([]);

  @override
  Accounts getAccounts() {
    // TODO: implement getAccounts
    throw UnimplementedError();
  }

  @override
  void saveAccount({required String id,
      required String name,
      required int balance,
      required List<AccountTransactions> transactions,
      required String ownerId}) {
    // TODO: implement saveAccount
  }
}
