import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_premium.freezed.dart';

@freezed
class UserPremium with _$UserPremium {
  const factory UserPremium(UserPremiumState value, {DateTime? expiredAt}) = _UserPremium;
  factory UserPremium.unregistered() => const UserPremium(UserPremiumState.unregistered, expiredAt: null);
  factory UserPremium.premium() =>
      UserPremium(UserPremiumState.premium, expiredAt: DateTime.now().add(const Duration(days: 7)));
  factory UserPremium.expired() => const UserPremium(UserPremiumState.expired, expiredAt: null);
}

enum UserPremiumState { unregistered, premium, expired }
