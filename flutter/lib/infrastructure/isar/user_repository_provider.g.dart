// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRepositoryHash() => r'4b6d11cd243fa83bb4bd7753319c8ea8dc6baa83';

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
String _$userDataHash() => r'f69991d569fb310d4de3129183926ca26cff1c69';

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
