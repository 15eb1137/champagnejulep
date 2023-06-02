import 'package:champagnejulep/domain/account/account.dart';
import 'package:champagnejulep/domain/account/transactions/transaction.dart';
import 'package:champagnejulep/domain/user/user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {
  setUp(() => initializeDateFormatting('ja_JP'));
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
  });
  group('[Small tests]', () {
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
    test('アカウントにトランザクションを1件記録してシミュレートするとその金額が残高になる', () {
      // 【入金】 2023-01-01 10,000円
      // 【確認】 2023-01-01 10,000円
      final transactions = [Transaction.calced(date: DateTime(2023, 1, 1), amount: 10000)];
      final account = Account.create('80ae0478-a252-415f-b34e-b1b515ec4855').recordAll(transactions);
      final atLatest = account.simulateLatest();
      expect(atLatest, 10000);
    });
    test('アカウントにトランザクションを2件以上記録してシミュレートするとその合計金額が残高になる', () {
      // 【入金】 2023-02-01 9,000円
      // 【出金】 2023-02-02 3,000円
      // 【確認】 2023-02-02 6,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 2, 1), amount: 9000),
        Transaction.calced(date: DateTime(2023, 2, 2), amount: -3000)
      ];
      final account = Account.create('a2607d4a-2142-4e1c-9049-1a4ff77ab9b2').recordAll(transactions);
      final atLatest = account.simulateLatest();
      expect(atLatest, 6000);
    });

    test('アカウントにトランザクションを追記してシミュレートすると、追記後の合計金額が残高になる', () {
      // 【入金】 2023-03-01 8,000円
      // 【出金】 2023-03-03 1,000円
      // 【確認】 2023-03-03 7,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 3, 1), amount: 8000),
        Transaction.calced(date: DateTime(2023, 3, 3), amount: -1000)
      ];
      final account = Account.create('c8d1ab0e-6855-2d54-b9e1-b6739733ee7e').recordAll(transactions);
      final atLatest = account.simulateLatest();
      expect(atLatest, 7000);

      // あとから追加：
      // 【出金】 2023-03-02 2,000円を追加
      // 【確認】 2023-03-03 5,000円
      final additionalTransaction = Transaction.calced(date: DateTime(2023, 3, 2), amount: -2000);
      final accountChanged = account.record(additionalTransaction);
      final atLatestChanged = accountChanged.simulateLatest();
      expect(atLatestChanged, 5000);
    });
    test('アカウントのトランザクションを変更してシミュレートすると、変更後の合計金額が残高になる', () {
      // 【入金】 2023-04-01 7,000円
      // 【出金】 2023-04-02 2,000円
      // 【確認】 2023-04-02 5,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 4, 1), amount: 7000),
        Transaction.calced(date: DateTime(2023, 4, 2), amount: -2000)
      ];
      final account = Account.create('6f2feb6c-f49e-4a70-9231-537ad836a78c').recordAll(transactions);
      final atLatest = account.simulateLatest();
      expect(atLatest, 5000);

      // あとから変更：
      // 【出金】 2023-04-02 3,000円に変更
      // 【確認】 2023-04-02 4,000円
      final targetTransaction =
          account.transactions.firstWhere((transaction) => transaction.transactionAt.value == DateTime(2023, 4, 2));
      final newTransaction = Transaction.calced(date: DateTime(2023, 4, 2), amount: -3000);
      final accountChanged = account.rewriteTransaction(targetTransaction.id, newTransaction);
      final atLatestChanged = accountChanged.simulateLatest();
      expect(atLatestChanged, 4000);
    });

    test('アカウントのトランザクションを削除してシミュレートすると、削除後の合計金額が残高になる', () {
      // 【入金】 2023-05-01 6,000円
      // 【出金】 2023-05-02 4,000円
      // 【確認】 2023-05-02 2,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 5, 1), amount: 6000),
        Transaction.calced(date: DateTime(2023, 5, 2), amount: -4000)
      ];
      final account = Account.create('1de0f3e4-dc48-40fd-b87d-5aa58f679d8e').recordAll(transactions);
      final atLatest = account.simulateLatest();
      expect(atLatest, 2000);

      // あとから削除：
      // 【出金】 2023-05-02 4,000円を削除
      // 【確認】 2023-05-02 6,000円
      final targetTransaction =
          account.transactions.firstWhere((transaction) => transaction.transactionAt.value == DateTime(2023, 5, 2));
      final accountChanged = account.cancelTransaction(targetTransaction.id);
      final atLatestChanged = accountChanged.simulateLatest();
      expect(atLatestChanged, 6000);
    });

    test('アカウントのトランザクションに指定日でシミュレートすると、指定日当日までの合計金額が残高になる', () {
      // 【入金】 2023-06-01 5,000円
      // 【出金】 2023-06-02 1,000円
      // 【入金】 2023-06-03 7,000円
      // 【出金】 2023-06-04 4,000円
      // 【確認】 2023-06-03 11,000円
      // 【確認】 2023-06-04 7,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 6, 1), amount: 5000),
        Transaction.calced(date: DateTime(2023, 6, 2), amount: -1000),
        Transaction.calced(date: DateTime(2023, 6, 3), amount: 7000),
        Transaction.calced(date: DateTime(2023, 6, 4), amount: -4000)
      ];
      final account = Account.create('83639a25-baf1-4bce-b3df-622cbc76de7f').recordAll(transactions);
      final today = DateTime(2023, 6, 3, 0, 0, 0, 0, 0);
      final atToday = account.simulateAt(today);
      expect(atToday, 11000);
      final now = DateTime(2023, 6, 3, 23, 59, 59, 999, 999);
      final atNow = account.simulateAt(now);
      expect(atNow, 11000);
      final latest = DateTime(2023, 6, 4, 0, 0, 0, 0, 0);
      final atLatest = account.simulateAt(latest);
      expect(atLatest, 7000);
    });
    // test('ShortageのMessageが正しく組み立てられる', () {
    //   //TODO: 正しくとはどういうことか説明できるテスト名にする
    //   final account = Account.create('80ae0478-a252-415f-b34e-b1b515ec4855');
    //   final today = DateTime(2023, 1, 1, 0, 0, 0, 0, 0);
    //   final targetDays = [DateTime(2022, 12, 29, 0, 0, 0, 0, 0), DateTime(2022, 12, 30, 0, 0, 0, 0, 0)];
    //   final hasTransactionsAccount = account
    //       .changeBalanceAt(300, today)
    //       .addTransactionHistory(targetDays[0], today)
    //       .addTransactionHistory(targetDays[1], today); // TODO: check - acountIdをオブジェクトのidを流用する形にしていいんだっけ？
    //   final amountChangedTransactionsAccount =
    //       hasTransactionsAccount // TODO: check - この辺怪しい、過去の日付からShortageを編み出すことは想定してない
    //           .changeTransactionHistory(hasTransactionsAccount.transactions.children[0].id.value, false,
    //               newAmount: -200)
    //           .changeTransactionHistory(hasTransactionsAccount.transactions.children[1].id.value, false,
    //               newAmount: -400);
    //   final changesInBalance = amountChangedTransactionsAccount.issueChangesInBalance();
    //   final shortage = Shortage.create(
    //       account.id, changesInBalance.firstWhere((changeInBalance) => changeInBalance.value.value < 0), 0);
    //   expect(shortage.message.value, '2022年12月30日に0円を下回る予定です。');
    // });
  });
}
