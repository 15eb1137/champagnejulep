import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'shortage_message.freezed.dart';

@freezed
class ShortageMessage with _$ShortageMessage {
  @Assert('value.length < 120')
  const factory ShortageMessage(String value) = _ShortageMessage;
  factory ShortageMessage.create(DateTime changeInBalance, int threshold, int shortageAmount) => ShortageMessage(
      '${DateFormat.yMMMMd('ja_JP').format(changeInBalance)}の時点で残高$threshold円まで$shortageAmount円足りなくなる予定です。');
}
