import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'isar/isar.dart';
import 'isar/user_data.dart';
import 'user_repository.dart';

part 'user_repository_provider.g.dart';

@Riverpod(keepAlive: true)
Future<UserRepository> userRepository(UserRepositoryRef ref) async {
  final isar = await ref.watch(isarProvider.future);
  return UserRepository(isar);
}

@riverpod
Stream<UserData?> userData(UserDataRef ref) async* {
  final userRepository = await ref.watch(userRepositoryProvider.future);
  yield* userRepository.watchUser();
}