import 'package:freezed_annotation/freezed_annotation.dart';

import '../account/account_balance.dart';
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
      required int threshold}) = _Shortage;
  factory Shortage.create(AccountId accountId, MapEntry<DateTime, AccountBalance> changeInBalance, int threshold) =>
      Shortage(
          accountId: accountId,
          title: ShortageTitle.create(threshold),
          message: ShortageMessage.create(changeInBalance, threshold),
          threshold: threshold);
}
