import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain_service.dart';
import 'user_id.dart';
import 'user_premium.dart';

@freezed
class User {
  final UserId _id;
  final UserPremium _premium;

  User({required UserId id, required UserPremium premium})
      : _id = id,
        _premium = premium {
    DomainService.saveUser(id: id, premium: premium);
  }
  factory User.create() => User(id: UserId.create(), premium: UserPremium.unregistered());
  factory User.restore() => DomainService.getUser();
  factory User.updateToPremium(UserId id) => User(id: id, premium: UserPremium.premium());
  factory User.updateToExpired(UserId id) => User(id: id, premium: UserPremium.expired());

  String get userId => _id.value;
  bool get isPremiumUnregistered => _premium.value == UserPremiumState.unregistered;
  bool get isPremium => _premium.value == UserPremiumState.premium;
  bool get isPremiumExpired => _premium.value == UserPremiumState.expired;
}
