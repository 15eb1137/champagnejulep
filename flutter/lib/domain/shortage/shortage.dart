import 'package:freezed_annotation/freezed_annotation.dart';

import '../account/account_id.dart';
import 'shortage_message.dart';
import 'shortage_title.dart';

part 'shortage.freezed.dart';

@freezed
class Shortage with _$Shortage {
  const Shortage._();
  const factory Shortage(
      {required AccountId accountId,
      required ShortageTitle title,
      required ShortageMessage message,
      required int threshold,
      required int shortageAmount,
      required ShortageShareResultStatus shareResultStatus}) = _Shortage;
  factory Shortage.create(AccountId accountId, DateTime changeInBalance, int threshold, int shortageAmount) => Shortage(
      accountId: accountId,
      title: ShortageTitle.create(threshold),
      message: ShortageMessage.create(changeInBalance, threshold, shortageAmount),
      threshold: threshold,
      shortageAmount: shortageAmount,
      shareResultStatus: ShortageShareResultStatus.unexecuted);
  Map<String, String> shareMessage() => {'message': message.value, 'subject': title.value};
}

enum ShortageShareResultStatus { success, dismissed, unavailable, unexecuted }
