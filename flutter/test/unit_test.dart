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
    test('アカウントにトランザクションを1件記録するとその金額が残高になる', () {
      // 【入金】 2023-01-01 10,000円
      // 【確認】 2023-01-01 10,000円
      final transactions = [Transaction.calced(date: DateTime(2023, 1, 1), amount: 10000)];
      final account = Account.create('80ae0478-a252-415f-b34e-b1b515ec4855').recordAll(transactions);
      final latest = account.simulateLatest();
      expect(latest, 10000);});
    test('アカウントにトランザクションを2件以上記録するとその合計金額が残高になる', () {
      // 【入金】 2023-02-01 9,000円
      // 【出金】 2023-02-02 3,000円
      // 【確認】 2023-02-02 6,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 2, 1), amount: 9000),
        Transaction.calced(date: DateTime(2023, 2, 2), amount: -3000)
      ];
      final account = Account.create('851a1b51-b4fd-a79f-2bad-be5414d96825').recordAll(transactions);
      final latest = account.simulateLatest();
      expect(latest, 6000);
    });

    test('アカウントにトランザクションを追記すると、追記後の合計金額が残高になる', () {
      // 【入金】 2023-03-01 8,000円
      // 【出金】 2023-03-03 1,000円
      // 【確認】 2023-03-03 7,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 3, 1), amount: 8000),
        Transaction.calced(date: DateTime(2023, 3, 3), amount: -1000)
      ];
      final account = Account.create('c8d1ab0e-6855-2d54-b9e1-b6739733ee7e').recordAll(transactions);
      final latest = account.simulateLatest();
      expect(latest, 7000);

      // あとから追加：
      // 【出金】 2023-03-02 2,000円を追加
      // 【確認】 2023-03-03 5,000円
      final additionalTransaction = Transaction.calced(date: DateTime(2023, 3, 2), amount: -2000);
      final accountChanged = account.record(additionalTransaction);
      final latestChanged = accountChanged.simulateLatest();
      expect(latestChanged, 5000);

    });
    test('アカウントのトランザクションを変更すると、変更後の合計金額が残高になる', () {
      // 【入金】 2023-04-01 7,000円
      // 【出金】 2023-04-02 2,000円
      // 【確認】 2023-04-02 5,000円
      final transactions = [
        Transaction.calced(date: DateTime(2023, 4, 1), amount: 7000),
        Transaction.calced(date: DateTime(2023, 4, 2), amount: -2000)
      ];
      final account = Account.create('66948c0c-3b62-3aa7-eab5-e5e911aa6d84').recordAll(transactions);
      final latest = account.simulateLatest();
      expect(latest, 5000);

      // あとから変更：
      // 【出金】 2023-04-02 3,000円に変更
      // 【確認】 2023-04-02 4,000円
      final targetTransaction =
          account.transactions.firstWhere((transaction) => transaction.transactionAt.value == DateTime(2023, 4, 2));
      final newTransaction = Transaction.calced(date: DateTime(2023, 4, 2), amount: 3000);
      final accountChanged = account.rewriteTransaction(targetTransaction.id, newTransaction);
      final latestChanged = accountChanged.simulateLatest();
      expect(latestChanged, 4000);
    });

    test('アカウントのトランザクションを削除すると、削除後の合計金額が残高になる', () {
      // 【入金】 2023-05-01 6,000円
      // 【出金】 2023-05-02 4,000円
      // 【確認】 2023-05-02 2,000円
      final transactions05 = [
        Transaction.calced(date: DateTime(2023, 5, 1), amount: 6000),
        Transaction.calced(date: DateTime(2023, 5, 2), amount: -4000)
      ];
      final account05 = Account.create('2274d5aa-a87d-c614-2a8e-dab0af5ff872').recordAll(transactions05);
      final latest05 = account05.simulateLatest();
      expect(latest05, 2000);

      // あとから削除：
      // 【出金】 2023-05-02 4,000円を削除
      // 【確認】 2023-05-02 6,000円
      final targetTransaction05 =
          account05.transactions.firstWhere((transaction) => transaction.transactionAt.value == DateTime(2023, 5, 2));
      final accountChanged05 = account05.cancelTransaction(targetTransaction05.id);
      final latestChanged05 = accountChanged05.simulateLatest();
      expect(latestChanged05, 6000);
    });
    // test('アカウントのトランザクションには現時点までの日付のみ追加できる', () {
    //   final account = Account.create('80ae0478-a252-415f-b34e-b1b515ec4855');
    //   final today = DateTime(2023, 1, 1, 0, 0, 0, 0, 0);
    //   final targetDays = [
    //     DateTime(2022, 12, 31, 0, 0, 0, 0, 0),
    //     DateTime(2023, 1, 1, 0, 0, 0, 0, 0),
    //     DateTime(2023, 1, 2, 0, 0, 0, 0, 0)
    //   ];
    //   final hasTransactionsAccount0 = account.addTransactionHistory(targetDays[0], today);
    //   final hasTransactionsAccount1 = hasTransactionsAccount0.addTransactionHistory(targetDays[1], today);

    //   expect(() => hasTransactionsAccount1.addTransactionHistory(targetDays[2], today), throwsException);
    // });
    // test('アカウントのissueBalanceNowが正しく計算できる', () {
    //   //TODO: 正しくとはどういうことか説明できるテスト名にする
    //   final account = Account.create('80ae0478-a252-415f-b34e-b1b515ec4855');
    //   final balanceUpdatedAt = DateTime(2023, 12, 28, 0, 0, 0, 0, 0);
    //   final today = DateTime(2023, 1, 1, 0, 0, 0, 0, 0);
    //   final targetDays = [DateTime(2022, 12, 29, 0, 0, 0, 0, 0), DateTime(2022, 12, 30, 0, 0, 0, 0, 0)];
    //   final hasTransactionsAccount = account
    //       .changeBalanceAt(500, balanceUpdatedAt)
    //       .addTransactionHistory(targetDays[0], today)
    //       .addTransactionHistory(targetDays[1], today);
    //   final amountChangedTransactionsAccount = hasTransactionsAccount
    //       .changeTransactionHistory(hasTransactionsAccount.transactions.children[0].id.value, false, newAmount: 200)
    //       .changeTransactionHistory(hasTransactionsAccount.transactions.children[1].id.value, false, newAmount: -100);
    //   final balanceValue = amountChangedTransactionsAccount.issueBalanceNow().value;
    //   expect(balanceValue, 600);
    // });
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
    // test('未来の日付のbalanceが正しく計算できる', () {
    //   //TODO: 正しくとはどういうことか説明できるテスト名にする
    //   final today = DateTime(2023, 1, 1, 0, 0, 0, 0, 0);
    //   final account = Account.create('80ae0478-a252-415f-b34e-b1b515ec4855').changeBalanceAt(600, today);
    //   final targetDays = [DateTime(2023, 1, 5, 0, 0, 0, 0, 0), DateTime(2023, 1, 10, 0, 0, 0, 0, 0)];
    //   final shceduledTransactions = Transactions([
    //     Transaction.scheduled(accountId: account.id, date: targetDays[0]).changeAmount(300),
    //     Transaction.scheduled(accountId: account.id, date: targetDays[1]).changeAmount(-50)
    //   ]);
    //   final changesInBalance =
    //       account.issueChangesInBalanceSchedule(shceduledTransactions); //TODO: 予定されたトランザクションがどの集約に含まれるのか考える
    //   final latestBalanceValue = changesInBalance.last.value.value;
    //   expect(latestBalanceValue, 850);
    // });
  //   test('予定されたトランザクションには現時点より未来の日付しか含まれない', () {
  //     // TODO: これはテストではない、かもしれない
  //     final accountId = AccountId('80ae0478-a252-415f-b34e-b1b515ec4855');
  //     final today = DateTime(2023, 1, 2, 0, 0, 0, 0, 0);
  //     final transactions = Transactions([
  //       Transaction.scheduled(accountId: accountId, date: DateTime(2023, 1, 2, 0, 0, 0, 0, 0)),
  //       Transaction.scheduled(accountId: accountId, date: DateTime(2023, 1, 3, 0, 0, 0, 0, 0)),
  //     ]);
  //     final isTransactionsDateAfterNow = transactions.children.every((transaction) {
  //       final transactionAt = transaction.transactionAt.value;
  //       return transactionAt.isAfter(today) || transactionAt.isAtSameMomentAs(today);
  //     });
  //     expect(isTransactionsDateAfterNow, true);
  //   });
  });
}
