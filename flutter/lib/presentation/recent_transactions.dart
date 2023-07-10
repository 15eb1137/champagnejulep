import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/transactions_page.dart';
import 'servicies/theme_service_provider.dart';

class RecentTransactions extends ConsumerWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactions = [
      <String, dynamic>{
        'icon': Icons.compare_arrows,
        'title': 'ASF*VIVE FITNESS TORON...',
        'subtitle': 'Credit Card Payment',
        'date': 'May 24, 2023'
      },
      <String, dynamic>{
        'icon': Icons.add,
        'title': 'ASF*VIVE FITNESS TORON...',
        'subtitle': 'Gym',
        'date': 'May 22, 2023'
      },
      <String, dynamic>{
        'icon': Icons.add,
        'title': 'ASF*VIVE FITNESS TORON...',
        'subtitle': 'Gym',
        'date': 'May 22, 2023'
      },
      <String, dynamic>{
        'icon': Icons.directions_bike,
        'title': 'Uber CANADA/UBERTRIP...',
        'subtitle': 'Ride Share',
        'date': 'May 18, 2023'
      },
      <String, dynamic>{
        'icon': Icons.compare_arrows,
        'title': 'EFT CREDIT CANADA',
        'subtitle': 'Credit Card Payment',
        'date': 'May 15, 2023'
      }
    ];
    return Card(
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text('Recent transactions', style: TextStyle(fontWeight: FontWeight.bold))),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute<TransactionsPage>(builder: (_) => const TransactionsPage()));
                    },
                    child: const Text('See all'))
              ]),
              ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          backgroundColor: ref.watch(themeServiceProvider).getSecondary(),
                          child: Icon(transactions[index]['icon'] as IconData)),
                      title: Text(transactions[index]['title'] as String),
                      subtitle: Text(transactions[index]['subtitle'] as String),
                      trailing: Text(transactions[index]['date'] as String),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(indent: 8, endIndent: 8),
                  itemCount: transactions.length < 5 ? transactions.length : 5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics())
            ])));
  }
}
