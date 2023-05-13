import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'account_id.freezed.dart';

@freezed
class AccountId with _$AccountId {
  @Assert('value.isNotEmpty')
  @Assert('Uuid.isValidUUID(fromString: value)')
  const factory AccountId(String value) = _AccountId;

  factory AccountId.create() => AccountId(const Uuid().v4());
}
