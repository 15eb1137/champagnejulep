import 'package:freezed_annotation/freezed_annotation.dart';

import '../account/account.dart';
import '../account/transactions/transactions.dart';
import 'shortage.dart';

part 'shortages.freezed.dart';

@freezed
class Shortages with _$Shortages {
  const Shortages._();
  const factory Shortages(List<Shortage> children) = _Shortages;
  factory Shortages.create({required Account account, required DateTime from}) {
    // TODO: account自体ではなくidを引数にする
    const threshold = 0;
    final fromDate = DateTime(from.year, from.month, from.day); // 応急的対応。TransactionAt等のAssertを活かすべきかもしれない。
    final shortages = <Shortage>[];
    final transactions = account.transactions;
    for (int i = 1; i <= transactions.length; i++) {
      final slicedTransactions = Transactions(transactions.children.take(i).toList());
      final transactionAt = slicedTransactions.last.transactionAt.value;
      final balance = slicedTransactions.simulate();
      if (balance < threshold && (transactionAt.isAtSameMomentAs(fromDate) || transactionAt.isAfter(fromDate))) {
        shortages.add(Shortage.create(account.id, slicedTransactions.last.transactionAt.value, threshold));
      }
    }
    return Shortages(shortages);
  }

  Iterable<Shortage> map<Shortage>(Shortage Function(Shortage e) toElement) =>
      children.map<Shortage>((e) => toElement(e as Shortage));
  Iterable<Shortage> where(bool Function(Shortage element) test) => children.where(test);
  Shortage firstWhere(bool Function(Shortage) test, {Shortage Function()? orElse}) =>
      children.firstWhere(test, orElse: orElse);
  Shortage get last => children.last;
  int get length => children.length;

  Shortages add(Shortage newShortage) => Shortages([...children, newShortage]);
  Shortages remove(Shortage target) => Shortages(children.where((shortage) => shortage != target).toList());
}
