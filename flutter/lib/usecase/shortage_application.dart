import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/account/account.dart';
import '../domain/shortage/shortages.dart';
import '../infrastructure/isar/account_repository_provider.dart';

part 'shortage_application.g.dart';

@riverpod
class ShortageApplication extends _$ShortageApplication {
  Future<Shortages> _fetch() async {
    final data = await ref.watch(accountDataProvider.future);
    return Shortages.create(
        accounts: data.map((datum) => Account.fromJson(datum.toJson())).toList(), from: DateTime.now());
  }

  @override
  Future<Shortages> build() async => _fetch();
}
