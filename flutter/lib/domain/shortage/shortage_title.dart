import 'package:freezed_annotation/freezed_annotation.dart';

part 'shortage_title.freezed.dart';

@freezed
class ShortageTitle with _$ShortageTitle {
  @Assert('value.length < 20')
  const factory ShortageTitle(String value) = _ShortageTitle;
  factory ShortageTitle.create(int threshold) => const ShortageTitle('アプリ名');
}
