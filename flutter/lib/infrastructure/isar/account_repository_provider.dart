import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'account_data.dart';
import 'account_repository.dart';
import 'isar.dart';

part 'account_repository_provider.g.dart';

@Riverpod(keepAlive: true)
Future<AccountRepository> accountRepository(AccountRepositoryRef ref) async {
  final isar = await ref.watch(isarProvider.future);
  return AccountRepository(isar);
}

@riverpod
Stream<List<AccountData>> accountData(AccountDataRef ref) async* {
  final accountRepository = await ref.watch(accountRepositoryProvider.future);
  yield* accountRepository.watchAllAccounts();
}

@riverpod
Stream<AccountData?> accountDetailData(AccountDetailDataRef ref, String id) async* {
  final accountRepository = await ref.watch(accountRepositoryProvider.future);
  yield* accountRepository.watchAccount(id);
}