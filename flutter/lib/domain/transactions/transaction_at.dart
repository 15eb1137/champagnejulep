import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
part 'transaction_at.freezed.dart';

@freezed
class TransactionAt with _$TransactionAt {
  const TransactionAt._();
  const factory TransactionAt(DateTime value) = _TransactionAt;
  factory TransactionAt.create() =>
      TransactionAt(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day));
  String get formattedYearMonthDay => DateFormat.yMMMMd().format(value);
}
