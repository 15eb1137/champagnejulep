import '../infrastructure/domain_notification_fcm.dart';
import '../infrastructure/domain_repository_isar.dart';
import '../infrastructure/domain_share_plus.dart';
import 'account/account.dart';
import 'transactions/transaction.dart';
import 'transactions/transactions.dart';
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
  static List<Account> getAccounts() => DomainRepositoryIsar().getAccounts();
  static void saveTransaction(Transaction transaction) => DomainRepositoryIsar().saveTransaction(
      accountId: transaction.accountId.value,
      title: transaction.titleValue,
      calcAuto: transaction.calcAuto,
      transactionAt: transaction.transactionAtValue,
      amonunt: transaction.amount);
  static Transactions getTransactions() => DomainRepositoryIsar().getTransactions();
  static void shareAlertShort(String message) => DomainSharePlus().shareAlertShort(message);
  static void setPushNotification(String title, String message) =>
      DomainNotificationFCM().setPushNotification(title, message);
}
