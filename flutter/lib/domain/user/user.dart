import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_id.dart';
import 'user_premium.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({@UserIdConverter() required UserId id, @UserPremiumConverter() required UserPremium premium}) =
      _User;
  factory User.create() => User(id: UserId.create(), premium: UserPremium.unregistered());
  factory User.restore(String userId, UserPremiumState premiumState, DateTime? expiredAt, DateTime restoreAt) {
    if (premiumState == UserPremiumState.premium &&
        expiredAt != null &&
        (restoreAt.isBefore(expiredAt) || restoreAt.isAtSameMomentAs(expiredAt))) {
      return User(id: UserId(userId), premium: UserPremium.premium(restoreAt));
    }
    return User(id: UserId(userId), premium: UserPremium(premiumState));
  }
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  bool isPremiumWhen(DateTime checkAt) =>
      premium.value == UserPremiumState.premium &&
      premium.expiredAt != null &&
      (checkAt.isBefore(premium.expiredAt!) || checkAt.isAtSameMomentAs(premium.expiredAt!));

  bool isPremiumExpiredWhen(DateTime checkAt) =>
      (premium.value == UserPremiumState.expired) ||
      (premium.value == UserPremiumState.premium && premium.expiredAt != null && checkAt.isAfter(premium.expiredAt!));

  User updateToPremium({DateTime? updatedAt}) => copyWith(premium: UserPremium.premium(updatedAt ?? DateTime.now()));
  User updateToExpired() => copyWith(premium: UserPremium.expired());
}
