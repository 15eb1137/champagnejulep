import 'package:champagnejulep/domain/user/user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('ユーザーは、プレミアムにアップデートされて7日後になるとPremiumStateがExpiredになる', () {
    final user = User.create();
    final today = DateTime(2023, 1, 1, 0, 0, 0, 0, 0);
    final updatedUser = user.updateToPremium(updatedAt: today);

    final stillPremiumAt = DateTime(2023, 1, 8, 0, 0, 0, 0, 0);
    expect(updatedUser.isPremiumExpiredWhen(stillPremiumAt), false);

    final expiredAt = DateTime(2023, 1, 8, 0, 0, 0, 0, 1);
    expect(updatedUser.isPremiumExpiredWhen(expiredAt), true);
  });
  test('アカウントのトランザクションには現時点より過去の日付しか含まれない', () {});
  test('アカウントのバランスのdateは現時点より過去の日付になる', () {});
  test('アカウントのissueBalanceNowが正しく計算できる', () {});
  test('ShortageのMessageが正しく組み立てられる', () {});
  test('未来の日付のbalanceが正しく計算できる', () {});
}
