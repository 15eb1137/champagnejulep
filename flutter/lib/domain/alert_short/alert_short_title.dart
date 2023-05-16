import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_short_title.freezed.dart';

@freezed
class AlertShortTitle with _$AlertShortTitle {
  @Assert('value.length < 20')
  const factory AlertShortTitle(String value) = _AlertShortTitle;
  factory AlertShortTitle.create(int threshold) => const AlertShortTitle('アプリ名');
}
