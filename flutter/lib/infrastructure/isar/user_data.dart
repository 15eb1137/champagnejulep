import 'package:isar/isar.dart';

import 'fast_hash.dart';

part 'user_data.g.dart';

@collection
class UserData {
  UserData({required this.id, required this.premiumState, required this.expiredAt});
  factory UserData.fromJson(Map<String, dynamic> json) {
    if (!json.containsKey('id')) throw Exception('id is required for user data');
    if (!json.containsKey('premium')) throw Exception('premium is required for user data');
    final premium = json['premium'] as Map<String, dynamic>;
    if (!premium.containsKey('value')) throw Exception('premium.value is required for user data');
    switch (premium['value'].toString()) {
      case 'unregistered':
        return UserData(id: json['id'] as String, premiumState: UserPremiumStateData.unregistered, expiredAt: null);
      case 'premium':
        if (!premium.containsKey('expiredAt')) throw Exception('premium.expiredAt is required for premium user data');
        return UserData(
            id: json['id'] as String,
            premiumState: UserPremiumStateData.premium,
            expiredAt: DateTime.parse(premium['expiredAt'].toString()));
      case 'expired':
        return UserData(id: json['id'] as String, premiumState: UserPremiumStateData.expired, expiredAt: null);
      default:
        throw Exception('Unknown premium value: ${premium['value']}');
    }
  }

  final String id;

  Id get isarId => fastHash(id);

  @enumerated
  final UserPremiumStateData premiumState;

  final DateTime? expiredAt;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'premium': <String, dynamic>{'value': premiumState.name, 'expiredAt': expiredAt?.toIso8601String()}
      };
}

enum UserPremiumStateData { unregistered, premium, expired }
