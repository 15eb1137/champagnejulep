import 'package:freezed_annotation/freezed_annotation.dart';

import '../changes_in_balance/change_in_balance.dart';
part 'alert_short_title.freezed.dart';

@freezed
class AlertShortTitle with _$AlertShortTitle {
  @Assert('value.length < 20')
  const factory AlertShortTitle(String value) = _AlertShortTitle;
  factory AlertShortTitle.create(ChangeInBalance changeInBalance, int threshold) => const AlertShortTitle('アプリ名');
}
