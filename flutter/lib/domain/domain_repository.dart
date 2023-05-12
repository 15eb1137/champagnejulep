import 'account/account_transactions.dart';
import 'account/accounts.dart';
import 'transactions_scheduled/transactions_scheduled.dart';
import 'user/user.dart';
import 'user/user_premium.dart';

abstract class DomainRepository {
  void saveUser({required String id, required UserPremiumState premium});
  User getUser();
  void saveAccount({required String id,
      required String name,
      required int balance,
      required List<AccountTransactions> transactions,
      required String ownerId});
  Accounts getAccounts();
  void saveTransactionScheduled(
      {required String accountId,
      required String title,
      required bool calcAuto,
      required DateTime transactionAt,
      required int value});
  TransactionsScheduled getTransactionsScheduled();
}
