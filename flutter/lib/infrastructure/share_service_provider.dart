import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_plus/share_plus.dart';

part 'share_service_provider.g.dart';

@Riverpod(keepAlive: true)
Future<ShareService> shareService(ShareServiceRef ref) async {
  return ShareService(shareLogs: []);
}

class ShareService {
  ShareService({required this.shareLogs});
  final List<ShareLog> shareLogs;

  Future<void> share(String message) async {
    final result = await Share.shareWithResult(message);
    shareLogs.add(ShareLog(message, result));
  }

  List<Map<String, dynamic>> getShareLog() {
    return shareLogs
        .map((log) => {
              'message': log.message,
              'result': log.result.toString(),
            })
        .toList();
  }
}

class ShareLog {
  const ShareLog(this.message, this.result);
  final String message;
  final ShareResult result;
}
