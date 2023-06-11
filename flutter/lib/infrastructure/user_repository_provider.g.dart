// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRepositoryHash() => r'4a0d73ffd6ec87a0d275200d105b8e5e9aa93247';

/// See also [userRepository].
@ProviderFor(userRepository)
final userRepositoryProvider = FutureProvider<UserRepository>.internal(
  userRepository,
  name: r'userRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserRepositoryRef = FutureProviderRef<UserRepository>;
String _$userDataHash() => r'e39ddaf09551d4d822b05cc0227ad11921e6549f';

/// See also [userData].
@ProviderFor(userData)
final userDataProvider = AutoDisposeStreamProvider<UserData?>.internal(
  userData,
  name: r'userDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserDataRef = AutoDisposeStreamProviderRef<UserData?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
