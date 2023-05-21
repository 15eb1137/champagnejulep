import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_id.dart';
import 'user_premium.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({required UserId id, required UserPremium premium}) = _User;
  factory User.create() => User(id: UserId.create(), premium: UserPremium.unregistered());

  bool get isPremiumUnregistered => premium.value == UserPremiumState.unregistered;
  bool get isPremium => premium.value == UserPremiumState.premium;
  bool isPremiumExpiredWhen(DateTime checkAt) =>
      (premium.value == UserPremiumState.expired) ||
      (premium.value == UserPremiumState.premium &&
          premium.expiredAt != null &&
          premium.expiredAt!.isBefore(checkAt));

  User updateToPremium({DateTime? updatedAt}) => copyWith(premium: UserPremium.premium(updatedAt ?? DateTime.now()));
  User updateToExpired() => copyWith(premium: UserPremium.expired());
}
