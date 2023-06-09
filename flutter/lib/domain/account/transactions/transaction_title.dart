import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_title.freezed.dart';

@freezed
class TransactionTitle with _$TransactionTitle {
  @Assert('value.length < 20')
  const factory TransactionTitle(String value) = _TransactionTitle;
  factory TransactionTitle.create() => const TransactionTitle('新しい入出金予定');
}

class TransactionTitleConverter
    implements JsonConverter<TransactionTitle, String> {
  const TransactionTitleConverter();

  @override
  TransactionTitle fromJson(String json) => TransactionTitle(json);

  @override
  String toJson(TransactionTitle object) => object.value;
}