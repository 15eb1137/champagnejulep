import 'package:champagnejulep/domain/domain_repository.dart';
import 'package:champagnejulep/domain/transactions_scheduled/transactions_scheduled.dart';
import 'package:champagnejulep/domain/user/user.dart';

class DomainRepositoryTest extends DomainRepository {
  @override
  void saveUser() {}

  @override
  User getUser() => User.create();

  @override
  void saveTransactionScheduled(
      {required String accountId,
      required String title,
      required bool calcAuto,
      required DateTime transactionAt,
      required int value}) {}

  @override
  TransactionsScheduled getTransactionsScheduled() => TransactionsScheduled([]);
}
