// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountRepositoryHash() => r'ba266948710a6f30c7296cf4d01ab9680ea9e6c5';

/// See also [accountRepository].
@ProviderFor(accountRepository)
final accountRepositoryProvider = FutureProvider<AccountRepository>.internal(
  accountRepository,
  name: r'accountRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accountRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccountRepositoryRef = FutureProviderRef<AccountRepository>;
String _$accountDataHash() => r'1ada083be640b29cb9d4acb4d05122ad524720e1';

/// See also [accountData].
@ProviderFor(accountData)
final accountDataProvider =
    AutoDisposeStreamProvider<List<AccountData>>.internal(
  accountData,
  name: r'accountDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$accountDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccountDataRef = AutoDisposeStreamProviderRef<List<AccountData>>;
String _$accountDetailDataHash() => r'b7d234ea596f2de3229769d1a13e804091b9c5f3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef AccountDetailDataRef = AutoDisposeStreamProviderRef<AccountData?>;

/// See also [accountDetailData].
@ProviderFor(accountDetailData)
const accountDetailDataProvider = AccountDetailDataFamily();

/// See also [accountDetailData].
class AccountDetailDataFamily extends Family<AsyncValue<AccountData?>> {
  /// See also [accountDetailData].
  const AccountDetailDataFamily();

  /// See also [accountDetailData].
  AccountDetailDataProvider call(
    String id,
  ) {
    return AccountDetailDataProvider(
      id,
    );
  }

  @override
  AccountDetailDataProvider getProviderOverride(
    covariant AccountDetailDataProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'accountDetailDataProvider';
}

/// See also [accountDetailData].
class AccountDetailDataProvider
    extends AutoDisposeStreamProvider<AccountData?> {
  /// See also [accountDetailData].
  AccountDetailDataProvider(
    this.id,
  ) : super.internal(
          (ref) => accountDetailData(
            ref,
            id,
          ),
          from: accountDetailDataProvider,
          name: r'accountDetailDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountDetailDataHash,
          dependencies: AccountDetailDataFamily._dependencies,
          allTransitiveDependencies:
              AccountDetailDataFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is AccountDetailDataProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
