import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../changes_in_balance/change_in_balance.dart';
part 'alert_short_message.freezed.dart';

@freezed
class AlertShortMessage with _$AlertShortMessage {
  @Assert('value.length < 120')
  const factory AlertShortMessage(String value) = _AlertShortMessage;
  factory AlertShortMessage.create(ChangeInBalance changeInBalance, int threshold) =>
      AlertShortMessage('${DateFormat.yMMMMd().format(changeInBalance.date)}に$threshold円を下回る予定です。');
}
