import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../accounts/account_id.dart';
import '../changes_in_balance/change_in_balance.dart';
import '../domain_service.dart';

part 'alert_short.freezed.dart';

@freezed
class AlertShort with _$AlertShort {
  const factory AlertShort(
      {required AccountId accountId,
      required String title,
      required String titleShort,
      required int threshold}) = _AlertShort;
  factory AlertShort.create(AccountId accountId, ChangeInBalance changeInBalance, int threshold) => AlertShort(
      accountId: accountId,
      title: '${DateFormat.yMMMMd().format(changeInBalance.date)}に$threshold円を下回る予定です。',
      titleShort: '${DateFormat.yMMMMd().format(changeInBalance.date)}に$threshold円を下回る予定です。',
      threshold: threshold);

  void share() {
    DomainService.shareAlertShort(titleShort);
  }

  void pushNotification() {
    DomainService.pushNotificationAlertShort(titleShort);
  }
}
