import 'transactions_scheduled/transactions_scheduled.dart';
import 'user/user.dart';

abstract class DomainRepository {
  void saveUser();
  User getUser();
  void saveTransactionScheduled(
      {required String accountId,
      required String title,
      required bool calcAuto,
      required DateTime transactionAt,
      required int value});
  TransactionsScheduled getTransactionsScheduled();
}
