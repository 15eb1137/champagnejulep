import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'account_transactions_id.freezed.dart';

@freezed
class AccountTransactionsId with _$AccountTransactionsId {
  @Assert('value.isNotEmpty')
  @Assert('Uuid.isValidUUID(fromString: value)')

  const factory AccountTransactionsId(String value) = _AccountBalanceActivityId;

  factory AccountTransactionsId.create() => AccountTransactionsId(const Uuid().v4());
}
