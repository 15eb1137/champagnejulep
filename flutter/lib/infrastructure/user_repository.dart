import 'package:isar/isar.dart';

import 'user_data.dart';

class UserRepository {
  const UserRepository(this.isar);
  final Isar isar;

  Stream<UserData?> watchUser() async* {
    final query = isar.userDatas.where().limit(1);

    await for (final results in query.watch(fireImmediately: true)) {
      if (results.isNotEmpty) {
        yield results.first;
      } else {
        yield null;
      }
    }
  }

  Future<void> save(Map<String, dynamic> data) async {
    await isar.writeTxn(() async {
      final userData = UserData.fromJson(data);
      await isar.userDatas.put(userData);
    });
  }
}
