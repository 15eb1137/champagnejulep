abstract class AccountRepository {
  Future<List<Map<String, dynamic>>> restore();
  Future<void> save(List<Map<String, dynamic>> account);
}
