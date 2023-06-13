import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'transaction_id.freezed.dart';

@freezed
class TransactionId with _$TransactionId {
  @Assert('value.isNotEmpty')
  @Assert('Uuid.isValidUUID(fromString: value)')
  factory TransactionId(String value) = _TransactionId;

  factory TransactionId.create() => TransactionId(const Uuid().v4());
}

class TransactionIdConverter implements JsonConverter<TransactionId, String> {
  const TransactionIdConverter();

  @override
  TransactionId fromJson(String json) => TransactionId(json);

  @override
  String toJson(TransactionId object) => object.value;
}