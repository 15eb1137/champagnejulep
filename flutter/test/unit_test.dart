import 'package:champagnejulep/domain/account/account.dart';
import 'package:champagnejulep/domain/user/user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Learning tests', () {
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
  });
  test('ユーザーは、プレミアムにアップデートされて7日後になるとPremiumStateがExpiredになる', () {
    final user = User.create();
    final today = DateTime(2023, 1, 1, 0, 0, 0, 0, 0);
    final updatedUser = user.updateToPremium(updatedAt: today);

    final stillPremiumAt = DateTime(2023, 1, 8, 0, 0, 0, 0, 0);
    expect(updatedUser.isPremiumExpiredWhen(stillPremiumAt), false);

    final expiredAt = DateTime(2023, 1, 8, 0, 0, 0, 0, 1);
    expect(updatedUser.isPremiumExpiredWhen(expiredAt), true);
  });
  test('アカウントのトランザクションには現時点より過去の日付しか含まれない', () {
    final account = Account.create('80ae0478-a252-415f-b34e-b1b515ec4855');
    final today = DateTime(2023, 1, 1, 0, 0, 0, 0, 0);
    final targetDays = [
      DateTime(2022, 12, 31, 0, 0, 0, 0, 0),
      DateTime(2023, 1, 1, 0, 0, 0, 0, 0),
      DateTime(2023, 1, 2, 0, 0, 0, 0, 0)
    ];
    final hasTransactionsAccount0 = account.addTransactionHistory(targetDays[0], today);
    final hasTransactionsAccount1 = hasTransactionsAccount0.addTransactionHistory(targetDays[1], today);

    expect(() => hasTransactionsAccount1.addTransactionHistory(targetDays[2], today), throwsException);
    
    final isAccountTransactionsDateBeforeNow = hasTransactionsAccount1.transactions.children.every((transaction) {
      final transactionAt = transaction.transactionAt.value;
      return transactionAt.isBefore(today) || transactionAt.isAtSameMomentAs(today);
    });
    expect(isAccountTransactionsDateBeforeNow, true);
  });
  test('アカウントのバランスのdateは現時点より過去の日付になる', () {});
  test('アカウントのissueBalanceNowが正しく計算できる', () {});
  test('ShortageのMessageが正しく組み立てられる', () {});
  test('未来の日付のbalanceが正しく計算できる', () {});
}
