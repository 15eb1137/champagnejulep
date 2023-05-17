import 'package:champagnejulep/domain/account/account.dart';
import 'package:champagnejulep/domain/domain_repository.dart';
import 'package:champagnejulep/domain/transactions/transactions.dart';
import 'package:champagnejulep/domain/user/user.dart';
import 'package:champagnejulep/domain/user/user_premium.dart';

class DomainRepositoryTest extends DomainRepository {
  @override
  void saveUser({required String id, required UserPremiumState premium}) {}

  @override
  User getUser() => User.create();

  @override
  void saveTransaction(
      {required String accountId,
      required String title,
      required bool calcAuto,
      required DateTime transactionAt,
      required int amonunt}) {}

  @override
  Transactions getTransactions() => Transactions([]);

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
