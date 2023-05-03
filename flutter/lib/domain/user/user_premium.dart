import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class UserPremium {
  final UserPremiumState _value;

  UserPremium(this._value);
  factory UserPremium.unregistered() => UserPremium(UserPremiumState.unregistered);
  factory UserPremium.premium() => UserPremium(UserPremiumState.premium);
  factory UserPremium.expired() => UserPremium(UserPremiumState.expired);

  UserPremiumState get value => _value;
}

enum UserPremiumState { unregistered, premium, expired }
