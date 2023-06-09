import 'package:champagnejulep/domain/account/account.dart';
import 'package:champagnejulep/domain/account/transactions/transaction.dart';
import 'package:champagnejulep/domain/shortage/shortages.dart';
import 'package:champagnejulep/domain/user/user.dart';
import 'package:champagnejulep/domain/user/user_id.dart';
import 'package:champagnejulep/infrastructure/isar/account_data.dart';
import 'package:champagnejulep/infrastructure/isar/user_data.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {
  setUp(() {
    initializeDateFormatting('ja_JP');
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  group('[Learning tests]', () {
    test('DateTime.isBefore/isAfter', () {
      final today = DateTime(2021, 1, 1, 0, 0, 0, 0, 0);
      final targetDate1 = DateTime(2020, 12, 31, 11, 59, 59, 999, 999);
      final targetDate2 = DateTime(2021, 1, 1, 0, 0, 0, 0, 0);
      final targetDate3 = DateTime(2021, 1, 1, 0, 0, 0, 0, 1);

      expect(targetDate1.isBefore(today), true);
      expect(targetDate2.isBefore(today), false);
      expect(targetDate3.isBefore(today), false);

      expect(targetDate1.isAfter(today), false);
      expect(targetDate2.isAfter(today), false);
      expect(targetDate3.isAfter(today), true);
    });
    test('Intl.format', () {
      final today = DateTime(2021, 1, 1, 0, 0, 0, 0, 0);
      final formattedTodayJa = DateFormat.yMMMMd('ja_JP').format(today);
      final formattedTodayEn = DateFormat.yMMMMd('en_US').format(today);
      expect(formattedTodayJa, '2021年1月1日');
      expect(formattedTodayEn, 'January 1, 2021');
    });
    test('for statement', () {
      final oneToFive = <int>[];
      for (int i = 1; i <= 5; i++) {
        oneToFive.add(i);
      }
      expect(oneToFive, [1, 2, 3, 4, 5]);
    });
  });
  group('[Small tests] User', () {
    test('ユーザーはプレミアムにアップデートされた7日後に期限切れになる', () {
      final user = User.create();
      final beforePremiumAt = DateTime(2023, 1, 1, 0, 0, 0, 0, 0);

      expect(user.isPremiumWhen(beforePremiumAt), false);
      expect(user.isPremiumExpiredWhen(beforePremiumAt), false);

      final updatedUser = user.updateToPremium(updatedAt: beforePremiumAt);

      final stillPremiumAt = DateTime(2023, 1, 8, 0, 0, 0, 0, 0);
      expect(updatedUser.isPremiumWhen(stillPremiumAt), true);
      expect(updatedUser.isPremiumExpiredWhen(stillPremiumAt), false);

      final expiredAt = DateTime(2023, 1, 8, 0, 0, 0, 0, 1);
      expect(updatedUser.isPremiumWhen(expiredAt), false);
      expect(updatedUser.isPremiumExpiredWhen(expiredAt), true);
    });
    test('ユーザーデータとユーザードメインオブジェクトを相互に変換できる', () {
      final user = User.create();
      final userData = UserData.fromJson(user.toJson());
      expect(user.id.value, userData.id);
      expect(user.premium.value.name, userData.premiumState.name);
      expect(user.premium.expiredAt, userData.expiredAt);
      final restoredUser = User.fromJson(userData.toJson());
      expect(user.id.value, restoredUser.id.value);
      expect(user.premium.value.name, restoredUser.premium.value.name);
      expect(user.premium.expiredAt, restoredUser.premium.expiredAt);

      final premiumUser = User.create().updateToPremium(updatedAt: DateTime(2023, 2, 1));
      final premiumUserData = UserData.fromJson(premiumUser.toJson());
      expect(premiumUser.id.value, premiumUserData.id);
      expect(premiumUser.premium.value.name, premiumUserData.premiumState.name);
      expect(premiumUser.premium.expiredAt, premiumUserData.expiredAt);
      final restoredPremiumUser = User.fromJson(premiumUserData.toJson());
      expect(premiumUser.id.value, restoredPremiumUser.id.value);
      expect(premiumUser.premium.value.name, restoredPremiumUser.premium.value.name);
      expect(premiumUser.premium.expiredAt, restoredPremiumUser.premium.expiredAt);

      final expiredUser = User.create().updateToExpired();
      final expiredUserData = UserData.fromJson(expiredUser.toJson());
      expect(expiredUser.id.value, expiredUserData.id);
      expect(expiredUser.premium.value.name, expiredUserData.premiumState.name);
      expect(expiredUser.premium.expiredAt, expiredUserData.expiredAt);
      final restoredExpiredUser = User.fromJson(expiredUserData.toJson());
      expect(expiredUser.id.value, restoredExpiredUser.id.value);
      expect(expiredUser.premium.value.name, restoredExpiredUser.premium.value.name);
      expect(expiredUser.premium.expiredAt, restoredExpiredUser.premium.expiredAt);
    });
  });
  group('[Small tests] Account', () {
    test('アカウントに記録したトランザクションの情報がテンプレート通りの文章になる', () {
      // テンプレート：◯年◯月◯日に◯円を入金/出金する予定です。
      final transactions = [
        Transaction.calced(date: DateTime(2022, 1, 1), amount: 50000),
        Transaction.calced(date: DateTime(2022, 1, 2), amount: -50000)
      ];
      final userId = UserId('7faca6d3-1399-47e0-ae4d-9ee54cd573a3');
      final account = Account.create(userId).recordAll(transactions);
      final infoList = account.infoTransactions();
      expect(infoList.length, 2);
      expect(infoList[0], '2022年1月1日に50,000円を入金する予定です。');
      expect(infoList[1], '2022年1月2日に50,000円を出金する予定です。');
    });
    test('アカウントにトランザクションを1件記録してシミュレートするとその金額が残高になる', () {
      // 【入金】 2023-01-01 10,000円
      // 【確認】 2023-01-01 10,000円
      final transactions = [Transaction.calced(date: DateTime(2023, 1, 1), amount: 10000)];
      final userId = UserId('80ae0478-a252-415f-b34e-b1b515ec4855');
      final account = Account.create(userId).recordAll(transactions);
      final atLatestBalance = account.simulateLatest();
      expect(atLatestBalance, 10000);
    });
    test('アカウントにトランザクションを2件以上記録してシミュレートするとその合計金額が残高になる', () {
      // 【入金】 2023-02-01 9,000円
      // 【出金】 2023-02-02 3,000円
      // 【確認】 2023-02-02 6,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 2, 1), amount: 9000),
        Transaction.calced(date: DateTime(2023, 2, 2), amount: -3000)
      ];
      final userId = UserId('a2607d4a-2142-4e1c-9049-1a4ff77ab9b2');
      final account = Account.create(userId).recordAll(transactions);
      final atLatestBalance = account.simulateLatest();
      expect(atLatestBalance, 6000);
    });

    test('アカウントにトランザクションを追記してシミュレートすると、追記後の合計金額が残高になる', () {
      // 【入金】 2023-03-01 8,000円
      // 【出金】 2023-03-03 1,000円
      // 【確認】 2023-03-03 7,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 3, 1), amount: 8000),
        Transaction.calced(date: DateTime(2023, 3, 3), amount: -1000)
      ];
      final userId = UserId('c8d1ab0e-6855-2d54-b9e1-b6739733ee7e');
      final account = Account.create(userId).recordAll(transactions);
      final atLatestBalance = account.simulateLatest();
      expect(atLatestBalance, 7000);

      // あとから追加：
      // 【出金】 2023-03-02 2,000円を追加
      // 【確認】 2023-03-03 5,000円
      final additionalTransaction = Transaction.calced(date: DateTime(2023, 3, 2), amount: -2000);
      final accountChanged = account.record(additionalTransaction);
      final atLatestChangedBalance = accountChanged.simulateLatest();
      expect(atLatestChangedBalance, 5000);
    });
    test('アカウントのトランザクションを変更してシミュレートすると、変更後の合計金額が残高になる', () {
      // 【入金】 2023-04-01 7,000円
      // 【出金】 2023-04-02 2,000円
      // 【確認】 2023-04-02 5,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 4, 1), amount: 7000),
        Transaction.calced(date: DateTime(2023, 4, 2), amount: -2000)
      ];
      final userId = UserId('6f2feb6c-f49e-4a70-9231-537ad836a78c');
      final account = Account.create(userId).recordAll(transactions);
      final atLatestBalance = account.simulateLatest();
      expect(atLatestBalance, 5000);

      // あとから変更：
      // 【出金】 2023-04-02 3,000円に変更
      // 【確認】 2023-04-02 4,000円
      final targetTransaction =
          account.transactions.firstWhere((transaction) => transaction.transactionAt.value == DateTime(2023, 4, 2));
      final newTransaction = Transaction.calced(date: DateTime(2023, 4, 2), amount: -3000);
      final accountChanged = account.rewriteTransaction(targetTransaction.id, newTransaction);
      final atLatestChangedBalance = accountChanged.simulateLatest();
      expect(atLatestChangedBalance, 4000);
    });

    test('アカウントのトランザクションを削除してシミュレートすると、削除後の合計金額が残高になる', () {
      // 【入金】 2023-05-01 6,000円
      // 【出金】 2023-05-02 4,000円
      // 【確認】 2023-05-02 2,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 5, 1), amount: 6000),
        Transaction.calced(date: DateTime(2023, 5, 2), amount: -4000)
      ];
      final userId = UserId('1de0f3e4-dc48-40fd-b87d-5aa58f679d8e');
      final account = Account.create(userId).recordAll(transactions);
      final atLatestBalance = account.simulateLatest();
      expect(atLatestBalance, 2000);

      // あとから削除：
      // 【出金】 2023-05-02 4,000円を削除
      // 【確認】 2023-05-02 6,000円
      final targetTransaction =
          account.transactions.firstWhere((transaction) => transaction.transactionAt.value == DateTime(2023, 5, 2));
      final accountChanged = account.cancelTransaction(targetTransaction.id);
      final atLatestChangedBalance = accountChanged.simulateLatest();
      expect(atLatestChangedBalance, 6000);
    });

    test('アカウントのトランザクションに指定日でシミュレートすると、指定日当日までの合計金額が残高になる', () {
      // 【入金】 2023-06-01 5,000円
      // 【入金】 2023-06-03 7,000円
      // 【出金】 2023-06-04 4,000円
      // 【確認】 2023-06-03 12,000円
      // 【確認】 2023-06-04 8,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 6, 1), amount: 5000),
        Transaction.calced(date: DateTime(2023, 6, 3), amount: 7000),
        Transaction.calced(date: DateTime(2023, 6, 4), amount: -4000)
      ];
      final userId = UserId('83639a25-baf1-4bce-b3df-622cbc76de7f');
      final account = Account.create(userId).recordAll(transactions);
      final today = DateTime(2023, 6, 3, 0, 0, 0, 0, 0);
      final atTodayBalance = account.simulateAt(today);
      expect(atTodayBalance, 12000);
      final now = DateTime(2023, 6, 3, 23, 59, 59, 999, 999);
      final atNowBalance = account.simulateAt(now);
      expect(atNowBalance, 12000);
      final latest = DateTime(2023, 6, 4, 0, 0, 0, 0, 0);
      final atLatestBalance = account.simulateAt(latest);
      expect(atLatestBalance, 8000);

      // あとから追加：
      // 【出金】 2023-06-02 1,000円を追加
      // 【確認】 2023-06-03 11,000円
      // 【確認】 2023-06-04 7,000円
      final additionalTransaction = Transaction.calced(date: DateTime(2023, 6, 2), amount: -1000);
      final accountChanged = account.record(additionalTransaction);
      final atTodayChangedBalance = accountChanged.simulateAt(today);
      expect(atTodayChangedBalance, 11000);
      final atLatestChangedBalance = accountChanged.simulateLatest();
      expect(atLatestChangedBalance, 7000);
    });
    test('アカウントデータとアカウントドメインオブジェクトを相互に変換できる', () {
      final transactions = [Transaction.calced(date: DateTime(2023, 7, 1), amount: 10000)];
      final userId = UserId('941ca766-d22a-3439-92de-89e158bf3bf2');
      final account = Account.create(userId).recordAll(transactions);
      final accountData = AccountData.fromJson(account.toJson());
      expect(account.id.value, accountData.id);
      expect(account.name.value, accountData.name);
      expect(
          const ListEquality<String>().equals(account.transactions.children.map((t) => t.id.value).toList(),
              accountData.transactions.map((t) => t.id!).toList()),
          true);
      expect(
          const ListEquality<String>().equals(account.transactions.children.map((t) => t.title.value).toList(),
              accountData.transactions.map((t) => t.title!).toList()),
          true);
      expect(
          const ListEquality<bool>().equals(account.transactions.children.map((t) => t.calcAuto).toList(),
              accountData.transactions.map((t) => t.calcAuto!).toList()),
          true);
      expect(
          const ListEquality<DateTime>().equals(
              account.transactions.children.map((t) => t.transactionAt.value).toList(),
              accountData.transactions.map((t) => t.transactionAt!).toList()),
          true);
      expect(
          const ListEquality<bool>().equals(account.transactions.children.map((t) => t.isCalced).toList(),
              accountData.transactions.map((t) => t.isCalced!).toList()),
          true);
      expect(
          const ListEquality<int>().equals(account.transactions.children.map((t) => t.amount).toList(),
              accountData.transactions.map((t) => t.amount!).toList()),
          true);
      expect(account.ownerId.value, accountData.ownerId);

      final restoredAccount = Account.fromJson(accountData.toJson());
      expect(account.id.value, restoredAccount.id.value);
      expect(account.name.value, restoredAccount.name.value);
      expect(
          const ListEquality<String>().equals(account.transactions.children.map((t) => t.id.value).toList(),
              restoredAccount.transactions.children.map((t) => t.id.value).toList()),
          true);
      expect(
          const ListEquality<String>().equals(account.transactions.children.map((t) => t.title.value).toList(),
              restoredAccount.transactions.children.map((t) => t.title.value).toList()),
          true);
      expect(
          const ListEquality<bool>().equals(account.transactions.children.map((t) => t.calcAuto).toList(),
              restoredAccount.transactions.children.map((t) => t.calcAuto).toList()),
          true);
      expect(
          const ListEquality<DateTime>().equals(
              account.transactions.children.map((t) => t.transactionAt.value).toList(),
              restoredAccount.transactions.children.map((t) => t.transactionAt.value).toList()),
          true);
      expect(
          const ListEquality<bool>().equals(account.transactions.children.map((t) => t.isCalced).toList(),
              restoredAccount.transactions.children.map((t) => t.isCalced).toList()),
          true);
      expect(
          const ListEquality<int>().equals(account.transactions.children.map((t) => t.amount).toList(),
              restoredAccount.transactions.children.map((t) => t.amount).toList()),
          true);
      expect(account.ownerId.value, restoredAccount.ownerId.value);
    });
  });
  group('[Small tests] Shortage', () {
    test('ショーテージのメッセージがテンプレート通りの文章になる', () {
      // テンプレート：◯年◯月◯日の時点で残高◯円まで◯円足りなくなる予定です。

      // 【入金】 2023-07-01 4,000円
      // 【出金】 2023-07-02 2,000円
      // 【出金】 2023-07-03 5,000円
      // 【出金】 2023-07-04 1,000円
      // 【入金】 2023-07-05 8,000円
      // 【出金】 2023-07-06 10,000円
      // 【確認】 2023-07-03 -3,000円
      // 【確認】 2023-07-04 -4,000円
      // 【確認】 2023-07-05 4,000円
      // 【確認】 2023-07-06 -6,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 7, 1), amount: 4000),
        Transaction.calced(date: DateTime(2023, 7, 2), amount: -2000),
        Transaction.calced(date: DateTime(2023, 7, 3), amount: -5000),
        Transaction.calced(date: DateTime(2023, 7, 4), amount: -1000),
        Transaction.calced(date: DateTime(2023, 7, 5), amount: 8000),
        Transaction.calced(date: DateTime(2023, 7, 6), amount: -10000)
      ];
      final userId = UserId('d69e94e4-e322-476d-abf7-050db9edcbd4');
      final account = Account.create(userId).recordAll(transactions);
      final day01 = DateTime(2023, 7, 3);
      final atDay01Balance = account.simulateAt(day01);
      expect(atDay01Balance, -3000);
      final today = DateTime(2023, 7, 4);
      final atTodayBalance = account.simulateAt(today);
      expect(atTodayBalance, -4000);
      final day02 = DateTime(2023, 7, 5);
      final atDay02Balance = account.simulateAt(day02);
      expect(atDay02Balance, 4000);
      final day03 = DateTime(2023, 7, 6);
      final atDay03Balance = account.simulateAt(day03);
      expect(atDay03Balance, -6000);

      final shortages = Shortages.create(accounts: [account], from: today);
      // ショーテージの発行数は、アカウントの残高が0円を下回る回数になる
      expect(shortages.length, 2);

      expect(shortages.children[0].message.value, '2023年7月4日の時点で残高0円まで4000円足りなくなる予定です。');
      expect(shortages.children[1].message.value, '2023年7月6日の時点で残高0円まで6000円足りなくなる予定です。');

      // 基本的にsimulateAtやfromの引数は日付の0時0分0秒になるようにするが、時間情報が入っても同様に動くことを確認
      final now = DateTime(2023, 7, 4, 23, 59, 59, 999, 999);
      final atNowBalance = account.simulateAt(now);
      expect(atNowBalance, -4000);
      final shortagesAtNow = Shortages.create(accounts: [account], from: now);
      expect(shortagesAtNow.length, 2);
    });
  });
}

