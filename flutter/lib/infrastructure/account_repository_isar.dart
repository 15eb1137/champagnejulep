import '../usecase/interface/account_repository.dart';

class AccountRepositoryIsar implements AccountRepository {
  @override
  Future<List<Map<String, dynamic>>> restore() {
    throw UnimplementedError();
  }

  @override
  Future<void> save(List<Map<String, dynamic>> account) {
    throw UnimplementedError();
  }

}