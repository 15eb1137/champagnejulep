import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'account_data.dart';
import 'user_data.dart';

part 'isar.g.dart';

@Riverpod(keepAlive: true)
Future<Isar> isar(IsarRef ref) async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = Isar.getInstance();
  return isar != null ? Future(() => isar) : Isar.open([UserDataSchema, AccountDataSchema], directory: dir.path);
}
