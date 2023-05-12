import '../infrastructure/domain_repository_isar.dart';
import 'account/account.dart';
import 'account/accounts.dart';
import 'transactions_scheduled/transaction_scheduled.dart';
import 'transactions_scheduled/transactions_scheduled.dart';
import 'user/user.dart';

class DomainService {
  static void saveUser(User user) => DomainRepositoryIsar().saveUser(id: user.id.value, premium: user.premium.value);
  static User getUser() => DomainRepositoryIsar().getUser();
  static void saveAccount(Account account) => DomainRepositoryIsar().saveAccount(
      id: account.id.value,
      name: account.name.value,
      balance: account.balance.value,
      transactions: account.transactions,
      ownerId: account.ownerId.value);
  static Accounts getAccounts() => DomainRepositoryIsar().getAccounts();
  static void saveTransactionScheduled(TransactionScheduled transactionScheduled) =>
      DomainRepositoryIsar().saveTransactionScheduled(
          accountId: transactionScheduled.accountId.value,
          title: transactionScheduled.title,
          calcAuto: transactionScheduled.calcAuto,
          transactionAt: transactionScheduled.transactionAt,
          value: transactionScheduled.value);
  static TransactionsScheduled getTransactionsScheduled() => DomainRepositoryIsar().getTransactionsScheduled();
}
