import '../infrastructure/domain_repository_isar.dart';
import 'transactions_scheduled/transaction_scheduled.dart';
import 'transactions_scheduled/transactions_scheduled.dart';
import 'user/user.dart';
import 'user/user_id.dart';
import 'user/user_premium.dart';

class DomainService {
  static void saveUser({required UserId id, required UserPremium premium} // TODO
          ) =>
      DomainRepositoryIsar().saveUser();
  static User getUser() => DomainRepositoryIsar().getUser();
  static void saveTransactionScheduled(TransactionScheduled transactionScheduled) =>
      DomainRepositoryIsar().saveTransactionScheduled(
          accountId: transactionScheduled.accountId.value,
          title: transactionScheduled.title,
          calcAuto: transactionScheduled.calcAuto,
          transactionAt: transactionScheduled.transactionAt,
          value: transactionScheduled.value);
  static TransactionsScheduled getTransactionsScheduled() => DomainRepositoryIsar().getTransactionsScheduled();
}
