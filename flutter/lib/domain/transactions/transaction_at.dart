import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
part 'transaction_at.freezed.dart';

@freezed
class TransactionAt with _$TransactionAt {
  const TransactionAt._();
  const factory TransactionAt(DateTime value) = _TransactionAt;
  factory TransactionAt.create() {
    final today = DateTime.now().add(const Duration(days: 1)).subtract(const Duration(microseconds: 1));
    return TransactionAt(today);
  }
  factory TransactionAt.createAt(DateTime dateTime) => TransactionAt(dateTime);
  String get formattedYearMonthDay => DateFormat.yMMMMd().format(value);
}
