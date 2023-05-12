import '../domain/domain_repository.dart';
import '../domain/transactions_scheduled/transactions_scheduled.dart';
import '../domain/user/user.dart';

class DomainRepositoryIsar extends DomainRepository {
  @override
  void saveUser() {
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
}
