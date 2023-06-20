import 'package:champagnejulep/usecase/account_application.dart';
import 'package:champagnejulep/usecase/account_detail_application.dart';
import 'package:champagnejulep/usecase/shortage_application.dart';
import 'package:champagnejulep/usecase/user_application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {
  setUp(() {
    initializeDateFormatting('ja_JP');
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  });
  group('[Learning tests]', () {
    // testWidgets('Share.shareWithResult Success', (tester) async {
    // final result = await Share.shareWithResult('test site https://rail-splitter.web.app/');
    // ネイティブのモーダルをタップする必要があるので標準テストパッケージではテストできない
    // Patrolというネイティブの要素を扱えるパッケージがあるがfvmの影響かFlutterのバージョンが取得できず動かない
    // 現状：これをテストする際は手動でテストを行う
    // 今後：fvmをやめてPatrolが動くかを試す
    // expect(result.status, ShareResultStatus.success);
    // });
    // testWidgets('Share.shareWithResult Dismissed', (tester) async {
    // final result = await Share.shareWithResult('test site https://rail-splitter.web.app/');
    // expect(result.status, ShareResultStatus.dismissed);
    // });
  });
  group('[Midium tests]', () {
    Widget wrap(Widget child) => ProviderScope(child: MaterialApp(home: Scaffold(body: child)));

    testWidgets('ユーザーのプレミアムへのアップデート', (tester) async {
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
            error: (err, _) => SizedBox(child: Text('error: $err')));
      });

      // 初期データが取得される
      await tester.pumpWidget(wrap(userConsumer));
      expect(find.text('loading'), findsOneWidget);
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.text('loading'), findsNothing);
      expect(find.text('error'), findsNothing);
      expect(find.text('unregistered'), findsOneWidget);

      // プレミアムへのアップデート
      await tester.tap(find.text('premium update button'));
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.text('loading'), findsNothing);
      expect(find.text('error'), findsNothing);
      expect(find.text('unregistered'), findsNothing);
      expect(find.text('premium'), findsOneWidget);

      // 別の画面に遷移して戻ってきたときにデータが取得される
      await tester.pumpWidget(wrap(const SizedBox()));
      await tester.pumpWidget(wrap(userConsumer));
      expect(find.text('loading'), findsOneWidget);
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.text('loading'), findsNothing);
      expect(find.text('error'), findsNothing);
      expect(find.text('unregistered'), findsNothing);
      expect(find.text('premium'), findsOneWidget);
    });

    testWidgets('アカウントの残高をシミュレート', (tester) async {
      // TODO: プレゼンテーションの実装後、実装したPageでテストする
      String targetAccountId = '';
      Future<void> goAccountDetail(String accountId) async => targetAccountId = accountId;

      final accountsConsumer = Consumer(builder: (context, ref, child) {
        final maybeAccounts = ref.watch(accountApplicationProvider);
        final accountsApplication = ref.watch(accountApplicationProvider.notifier);
        return maybeAccounts.when(
            data: (accounts) {
              return Column(children: [
                ...accounts
                    .map((account) => Row(children: [
                          SizedBox(child: Text('account: ${account.name.value}')),
                          TextButton(
                              onPressed: () async => await goAccountDetail(account.id.value),
                              child: const Text('detail button'))
                        ]))
                    .toList(),
                TextButton(
                    onPressed: () => accountsApplication.accountSetup(), child: const Text('account setup button'))
              ]);
            },
            loading: () => const SizedBox(child: Text('loading')),
            error: (err, _) => SizedBox(child: Text('error: $err')));
      });
      int amountClickCount = 0;
      final accountDetailConsumer = Consumer(builder: (context, ref, child) {
        final maybeAccountDetail = ref.watch(accountDetailApplicationProvider(targetAccountId));
        final accountDetailApplication = ref.watch(accountDetailApplicationProvider(targetAccountId).notifier);
        return maybeAccountDetail.when(
            data: (accountDetail) => TextButton(
                child: Text('amount: ${accountDetail.simulateLatest()}'),
                onPressed: () async {
                  if (amountClickCount == 0) {
                    await accountDetailApplication.record(DateTime.now(), 10000);
                  } else if (amountClickCount == 1) {
                    await accountDetailApplication.record(DateTime.now(), -20000);
                  } else {
                    await accountDetailApplication.record(DateTime.now(), 5000);
                  }
                  amountClickCount++;
                }),
            loading: () => const SizedBox(child: Text('loading')),
            error: (err, _) => SizedBox(child: Text('error: $err')));
      });
      await tester.pumpWidget(wrap(accountsConsumer));
      expect(find.text('loading'), findsOneWidget);
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.text('loading'), findsNothing);
      expect(find.text('error'), findsNothing);
      final accountWidgetFinder = find.byWidgetPredicate(
          (widget) => widget is SizedBox && widget.child is Text && widget.child.toString().contains('account: '));
      expect(accountWidgetFinder, findsNothing);
      await tester.tap(find.text('account setup button'));
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(accountWidgetFinder, findsNWidgets(1));
      await tester.tap(find.text('account setup button'));
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(accountWidgetFinder, findsNWidgets(2));

      await tester.tap(find.text('detail button').first);
      await tester.pumpWidget(wrap(accountDetailConsumer));
      expect(find.text('loading'), findsOneWidget);
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.text('amount: 0'), findsOneWidget);

      await tester.tap(find.textContaining('amount: '));
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.text('amount: 10000'), findsOneWidget);

      await tester.tap(find.textContaining('amount: '));
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.text('amount: -10000'), findsOneWidget);

      await tester.tap(find.textContaining('amount: '));
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.text('amount: -5000'), findsOneWidget);
    });
    testWidgets('発行されたショーテージを確認', (tester) async {
      final shortagesConsumer = Consumer(builder: (context, ref, child) {
        final maybeShortages = ref.watch(shortageApplicationProvider);
        return maybeShortages.when(
            data: (shortages) => Column(
                children: shortages.children.map((shortage) => SizedBox(child: Text(shortage.message.value))).toList()),
            loading: () => const SizedBox(child: Text('loading')),
            error: (err, _) {
              return SizedBox(child: Text('error: $err'));
            });
      });
      await tester.pumpWidget(wrap(shortagesConsumer));
      expect(find.text('loading'), findsOneWidget);
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.text('loading'), findsNothing);
      expect(find.text('error'), findsNothing);
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(
          find.text('${DateFormat.yMMMMd('ja_JP').format(DateTime.now())}の時点で残高0円まで10000円足りなくなる予定です。'), findsOneWidget);
      expect(
          find.text('${DateFormat.yMMMMd('ja_JP').format(DateTime.now())}の時点で残高0円まで5000円足りなくなる予定です。'), findsOneWidget);
    });
  });
}
