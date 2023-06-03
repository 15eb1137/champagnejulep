import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'shortage_message.freezed.dart';

@freezed
class ShortageMessage with _$ShortageMessage {
  @Assert('value.length < 120')
  const factory ShortageMessage(String value) = _ShortageMessage;
  factory ShortageMessage.create(DateTime changeInBalance, int threshold) =>
      ShortageMessage('${DateFormat.yMMMMd('ja_JP').format(changeInBalance)}に$threshold円を下回る予定です。');
}
