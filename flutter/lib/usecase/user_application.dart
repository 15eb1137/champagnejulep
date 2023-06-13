import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/user/user.dart';
import '../infrastructure/isar/user_repository_provider.dart';

part 'user_application.g.dart';

@riverpod
class UserApplication extends _$UserApplication {
  Future<User> _fetch() async {
    final repository = await ref.watch(userRepositoryProvider.future);
    // 関数中でuserDataが変わるためかwatchにすると再実行されてしまうためここではreadを使用している
    final data = await ref.read(userDataProvider.future);
    if (data != null) {
      final user = User.fromJson(data.toJson());
      return user.isPremiumExpiredWhen(DateTime.now()) ? user.updateToExpired() : user;
    } else {
      final newUser = User.create();
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        final data = newUser.toJson();
        await repository.save(data);
        return newUser;
      });
      return state.value!;
    }
  }

  @override
  Future<User> build() async => _fetch();

  Future<void> updateToPremium() async {
    final repository = await ref.watch(userRepositoryProvider.future);
    state.whenData((user) async {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        final updated = user.updateToPremium(updatedAt: DateTime.now());
        final data = updated.toJson();
        await repository.save(data);
        return _fetch();
      });
    });
  }
}
