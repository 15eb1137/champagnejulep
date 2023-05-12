import 'transactions_scheduled/transactions_scheduled.dart';
import 'user/user.dart';
import 'user/user_premium.dart';

abstract class DomainRepository {
  void saveUser({required String id, required UserPremiumState premium});
  User getUser();
  void saveTransactionScheduled(
      {required String accountId,
      required String title,
      required bool calcAuto,
      required DateTime transactionAt,
      required int value});
  TransactionsScheduled getTransactionsScheduled();
}
