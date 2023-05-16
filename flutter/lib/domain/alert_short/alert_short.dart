import 'package:freezed_annotation/freezed_annotation.dart';

import '../accounts/account_balance.dart';
import '../accounts/account_id.dart';
import '../domain_service.dart';
import 'alert_short_message.dart';
import 'alert_short_title.dart';

part 'alert_short.freezed.dart';

@freezed
class AlertShort with _$AlertShort {
  const factory AlertShort(
      {required AccountId accountId,
      required AlertShortTitle title,
      required AlertShortMessage message,
      required int threshold}) = _AlertShort;
  factory AlertShort.create(AccountId accountId, MapEntry<DateTime, AccountBalance> changeInBalance, int threshold) => AlertShort(
      accountId: accountId,
      title: AlertShortTitle.create(threshold),
      message: AlertShortMessage.create(changeInBalance, threshold),
      threshold: threshold);

  void share() => DomainService.shareAlertShort(message.value);
  void pushNotification() => DomainService.pushNotificationAlertShort(title.value, message.value);
}
