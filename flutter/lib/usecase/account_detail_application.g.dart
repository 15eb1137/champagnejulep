// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_detail_application.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountDetailApplicationHash() =>
    r'042a7b5586362bdd9320c0b57ae36742e1ceebbb';

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

abstract class _$AccountDetailApplication
    extends BuildlessAutoDisposeAsyncNotifier<Account> {
  late final String accountId;

  Future<Account> build(
    String accountId,
  );
}

/// See also [AccountDetailApplication].
@ProviderFor(AccountDetailApplication)
const accountDetailApplicationProvider = AccountDetailApplicationFamily();

/// See also [AccountDetailApplication].
class AccountDetailApplicationFamily extends Family<AsyncValue<Account>> {
  /// See also [AccountDetailApplication].
  const AccountDetailApplicationFamily();

  /// See also [AccountDetailApplication].
  AccountDetailApplicationProvider call(
    String accountId,
  ) {
    return AccountDetailApplicationProvider(
      accountId,
    );
  }

  @override
  AccountDetailApplicationProvider getProviderOverride(
    covariant AccountDetailApplicationProvider provider,
  ) {
    return call(
      provider.accountId,
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
  String? get name => r'accountDetailApplicationProvider';
}

/// See also [AccountDetailApplication].
class AccountDetailApplicationProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AccountDetailApplication,
        Account> {
  /// See also [AccountDetailApplication].
  AccountDetailApplicationProvider(
    this.accountId,
  ) : super.internal(
          () => AccountDetailApplication()..accountId = accountId,
          from: accountDetailApplicationProvider,
          name: r'accountDetailApplicationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountDetailApplicationHash,
          dependencies: AccountDetailApplicationFamily._dependencies,
          allTransitiveDependencies:
              AccountDetailApplicationFamily._allTransitiveDependencies,
        );

  final String accountId;

  @override
  bool operator ==(Object other) {
    return other is AccountDetailApplicationProvider &&
        other.accountId == accountId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, accountId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<Account> runNotifierBuild(
    covariant AccountDetailApplication notifier,
  ) {
    return notifier.build(
      accountId,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
