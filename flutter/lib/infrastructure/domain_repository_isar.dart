import '../domain/account/account.dart';
import '../domain/domain_repository.dart';
import '../domain/transactions/transactions.dart';
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
  void saveTransaction(
      {required String accountId,
      required String title,
      required bool calcAuto,
      required DateTime transactionAt,
      required int amonunt}) {
    // TODO: implement saveTransaction
  }

  @override
  Transactions getTransactions() {
    // TODO: implement getTransactions
    return Transactions([]);
  }

  @override
  List<Account> getAccounts() {
    // TODO: implement getAccounts
    throw UnimplementedError();
  }

  @override
  void saveAccount(
      {required String id,
      required String name,
      required int balance,
      required Transactions transactions,
      required String ownerId}) {
    // TODO: implement saveAccount
  }
}
