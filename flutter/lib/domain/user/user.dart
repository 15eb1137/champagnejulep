import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain_service.dart';
import 'user_id.dart';
import 'user_premium.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  User._() {
    DomainService.saveUser(id: id, premium: premium);
  }

  const factory User({required UserId id, required UserPremium premium}) = _User;
  factory User.create() => User(id: UserId.create(), premium: UserPremium.unregistered());
  factory User.restore() => DomainService.getUser();

  bool get isPremiumUnregistered => premium.value == UserPremiumState.unregistered;
  bool get isPremium => premium.value == UserPremiumState.premium;
  bool get isPremiumExpired => premium.value == UserPremiumState.expired;

  User updateToPremium() => copyWith(premium: UserPremium.premium());
  User updateToExpired() => copyWith(premium: UserPremium.expired());
}
