import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../accounts/account_balance.dart';
part 'alert_short_message.freezed.dart';

@freezed
class AlertShortMessage with _$AlertShortMessage {
  @Assert('value.length < 120')
  const factory AlertShortMessage(String value) = _AlertShortMessage;
  factory AlertShortMessage.create(MapEntry<DateTime, AccountBalance> changeInBalance, int threshold) =>
      AlertShortMessage('${DateFormat.yMMMMd().format(changeInBalance.key)}に$threshold円を下回る予定です。');
}
