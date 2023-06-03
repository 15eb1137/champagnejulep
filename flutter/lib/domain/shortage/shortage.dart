import 'package:freezed_annotation/freezed_annotation.dart';

import '../account/account_id.dart';
import 'shortage_message.dart';
import 'shortage_title.dart';

part 'shortage.freezed.dart';

@freezed
class Shortage with _$Shortage {
  const factory Shortage(
      {required AccountId accountId,
      required ShortageTitle title,
      required ShortageMessage message,
      required int threshold,
      required ShortageShareResultStatus shareResultStatus}) = _Shortage;
  factory Shortage.create(AccountId accountId, DateTime changeInBalance, int threshold) => Shortage(
      accountId: accountId,
      title: ShortageTitle.create(threshold),
      message: ShortageMessage.create(changeInBalance, threshold),
      threshold: threshold,
      shareResultStatus: ShortageShareResultStatus.unexecuted);
  Map<String, String> shareMessage() => {'message': message.value, 'subject': title.value};
}

enum ShortageShareResultStatus { success, dismissed, unavailable, unexecuted }