import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
part 'transaction_at.freezed.dart';

@freezed
class TransactionAt with _$TransactionAt {
  const TransactionAt._();
  const factory TransactionAt(DateTime value) = _TransactionAt;
  factory TransactionAt.createAt(DateTime dateTime) => TransactionAt(dateTime);
  String get formattedYearMonthDay => DateFormat.yMMMMd('ja_JP').format(value);
}

class TransactionAtConverter implements JsonConverter<TransactionAt, DateTime> {
  const TransactionAtConverter();

  @override
  TransactionAt fromJson(DateTime json) => TransactionAt(json);

  @override
  DateTime toJson(TransactionAt object) => object.value;
}