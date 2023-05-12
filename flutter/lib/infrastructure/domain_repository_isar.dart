import '../domain/account/account_transactions.dart';
import '../domain/account/accounts.dart';
import '../domain/domain_repository.dart';
import '../domain/transactions_scheduled/transactions_scheduled.dart';
import '../domain/user/user.dart';
import '../domain/user/user_premium.dart';

class DomainRepositoryIsar extends DomainRepository {
  @override
  void saveUser({required String id, required UserPremiumState premium}) {
    // TODO: implement saveUser
  }

  @override
  User getUser() {
    // TODO: implement getUser
    return User.create();
  }

  @override
  void saveTransactionScheduled(
      {required String accountId,
      required String title,
      required bool calcAuto,
      required DateTime transactionAt,
      required int value}) {
    // TODO: implement saveTransactionScheduled
  }

  @override
  TransactionsScheduled getTransactionsScheduled() {
    // TODO: implement getTransactionsScheduled
    return TransactionsScheduled([]);
  }

  @override
  Accounts getAccounts() {
    // TODO: implement getAccounts
    throw UnimplementedError();
  }

  @override
  void saveAccount(
      {required String id,
      required String name,
      required int balance,
      required List<AccountTransactions> transactions,
      required String ownerId}) {
    // TODO: implement saveAccount
  }
}
