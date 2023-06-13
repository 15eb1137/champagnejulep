import 'dart:math';

import 'package:champagnejulep/usecase/account_application.dart';
import 'package:champagnejulep/usecase/user_application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('[Learning tests]', () {
    testWidgets('Share.shareWithResult Success', (tester) async {
      // final result = await Share.shareWithResult('test site https://rail-splitter.web.app/');
      // ネイティブのモーダルをタップする必要があるので標準テストパッケージではテストできない
      // Patrolというネイティブの要素を扱えるパッケージがあるがfvmの影響かFlutterのバージョンが取得できず動かない
      // 現状：これをテストする際は手動でテストを行う
      // 今後：fvmをやめてPatrolが動くかを試す
      // expect(result.status, ShareResultStatus.success);
    });
    testWidgets('Share.shareWithResult Dismissed', (tester) async {
      // final result = await Share.shareWithResult('test site https://rail-splitter.web.app/');
      // expect(result.status, ShareResultStatus.dismissed);
    });
  });
  group('[Midium tests]', () {
    testWidgets('ユーザーのプレミアムへのアップデート', (tester) async {
      Widget wrap(Widget child) => ProviderScope(child: MaterialApp(home: Scaffold(body: child)));
      final userConsumer = Consumer(builder: (context, ref, child) {
        final maybeUser = ref.watch(userApplicationProvider);
        final userApplication = ref.watch(userApplicationProvider.notifier);
        return maybeUser.when(
            data: (user) => Column(children: [
                  SizedBox(
                    child: Text(user.premium.value.name),
                  ),
                  TextButton(
                      onPressed: () => userApplication.updateToPremium(), child: const Text('premium update button'))
                ]),
            loading: () => const SizedBox(child: Text('loading')),
            error: (err, _) {
              debugPrint('user error: $err');
              return SizedBox(child: Text('error: $err'));
            });
      });

      // 初期データが取得される
      await tester.pumpWidget(wrap(userConsumer));
      expect(find.text('loading'), findsOneWidget);
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('loading'), findsNothing);
      expect(find.text('error'), findsNothing);
      expect(find.text('unregistered'), findsOneWidget);

      // プレミアムへのアップデート
      await tester.tap(find.text('premium update button'));
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('loading'), findsNothing);
      expect(find.text('error'), findsNothing);
      expect(find.text('unregistered'), findsNothing);
      expect(find.text('premium'), findsOneWidget);

      // 別の画面に遷移して戻ってきたときにデータが取得される
      await tester.pumpWidget(wrap(const SizedBox()));
      await tester.pumpWidget(wrap(userConsumer));
      expect(find.text('loading'), findsOneWidget);
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('loading'), findsNothing);
      expect(find.text('error'), findsNothing);
      expect(find.text('unregistered'), findsNothing);
      expect(find.text('premium'), findsOneWidget);
    });

    testWidgets('アカウントの残高をシミュレート', (tester) async {
      Widget wrap(Widget child) => ProviderScope(child: MaterialApp(home: Scaffold(body: child)));
      // int randomValue = Random().nextInt(10000);
      final accountsConsumer = Consumer(builder: (context, ref, child) {
        final maybeAccounts = ref.watch(accountApplicationProvider);
        final accountsApplication = ref.watch(accountApplicationProvider.notifier);
        return maybeAccounts.when(
            data: (accounts) {
              return Column(children: [
                ...accounts
                    .map((account) => SizedBox(
                          key: const Key('account'),
                          child: Text('${account.name}: ${account.id}'),
                        ))
                    .toList(),
                TextButton(
                    onPressed: () {
                      accountsApplication.accountSetup();
                    },
                    child: const Text('account setup button'))
              ]);
            },
            loading: () => const SizedBox(child: Text('loading')),
            error: (err, _) {
              debugPrint('accounts error $err');
              return SizedBox(child: Text('error: $err'));
            });
      });
      await tester.pumpWidget(wrap(accountsConsumer));
      expect(find.text('loading'), findsOneWidget);
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('loading'), findsNothing);
      expect(find.text('error'), findsNothing);
      expect(find.byKey(const Key('account')), findsNothing);
      await tester.tap(find.text('account setup button'));
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.byKey(const Key('account')), findsNWidgets(1));
    });
  });
}
