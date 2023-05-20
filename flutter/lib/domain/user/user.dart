import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_id.dart';
import 'user_premium.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({required UserId id, required UserPremium premium}) = _User;
  factory User.create() => User(id: UserId.create(), premium: UserPremium.unregistered());

  bool get isPremiumUnregistered => premium.value == UserPremiumState.unregistered;
  bool get isPremium => premium.value == UserPremiumState.premium;
  bool get isPremiumExpired => premium.value == UserPremiumState.expired;

  User updateToPremium() => copyWith(premium: UserPremium.premium());
  User updateToExpired() => copyWith(premium: UserPremium.expired());
}
