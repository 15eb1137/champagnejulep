import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('[Learning tests]', () {
    testWidgets('Share.shareWithResult Success', (tester) async {
      final result = await Share.shareWithResult('test site https://rail-splitter.web.app/');
      expect(result.status, ShareResultStatus.success); // 自動タップする方法が分からないが手動でアクションをすると成功する
    });
    testWidgets('Share.shareWithResult Dismissed', (tester) async {
      final result = await Share.shareWithResult('test site https://rail-splitter.web.app/');
      expect(result.status, ShareResultStatus.dismissed); // 自動タップする方法が分からないが手動でシート外をタップすると失敗する
    });
  });
}
