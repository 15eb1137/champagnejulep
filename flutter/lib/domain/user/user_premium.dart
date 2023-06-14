import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_premium.freezed.dart';

@freezed
class UserPremium with _$UserPremium {
  const factory UserPremium(UserPremiumState value, {DateTime? expiredAt}) = _UserPremium;
  factory UserPremium.unregistered() => const UserPremium(UserPremiumState.unregistered, expiredAt: null);
  factory UserPremium.premium(DateTime updatedAt) =>
      UserPremium(UserPremiumState.premium, expiredAt: updatedAt.add(const Duration(days: 7)));
  factory UserPremium.expired() => const UserPremium(UserPremiumState.expired, expiredAt: null);
}

enum UserPremiumState { unregistered, premium, expired }

class UserPremiumConverter implements JsonConverter<UserPremium, Map<String, dynamic>> {
  const UserPremiumConverter();

  @override
  UserPremium fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String;
    final expiredAt = json['expiredAt'] as String?;
    switch (value) {
      case 'unregistered':
        return const UserPremium(UserPremiumState.unregistered, expiredAt: null);
      case 'premium':
        return UserPremium(UserPremiumState.premium, expiredAt: DateTime.parse(expiredAt!));
      case 'expired':
        return const UserPremium(UserPremiumState.expired, expiredAt: null);
      default:
        throw Exception('Unknown UserPremiumState: $value');
    }
  }

  @override
  Map<String, dynamic> toJson(UserPremium object) {
    final value = object.value;
    final expiredAt = object.expiredAt;
    switch (value) {
      case UserPremiumState.unregistered:
        return <String, dynamic>{'value': 'unregistered', 'expiredAt': null};
      case UserPremiumState.premium:
        return <String, dynamic>{'value': 'premium', 'expiredAt': expiredAt!.toIso8601String()};
      case UserPremiumState.expired:
        return <String, dynamic>{'value': 'expired', 'expiredAt': null};
    }
  }
}
