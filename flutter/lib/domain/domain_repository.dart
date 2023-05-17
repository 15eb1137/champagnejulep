import 'account/account.dart';
import 'transactions/transactions.dart';
import 'user/user.dart';
import 'user/user_premium.dart';

abstract class DomainRepository {
  void saveUser({required String id, required UserPremiumState premium});
  User getUser();
  void saveAccount(
      {required String id,
      required String name,
      required int balance,
      required Transactions transactions,
      required String ownerId});
  List<Account> getAccounts();
  void saveTransaction(
      {required String accountId,
      required String title,
      required bool calcAuto,
      required DateTime transactionAt,
      required int amonunt});
  Transactions getTransactions();
}
