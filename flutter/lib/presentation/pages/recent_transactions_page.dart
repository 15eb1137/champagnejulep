import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../recent_transactions.dart';
import '../servicies/theme_service_provider.dart';

class RecentTransactionsPage extends ConsumerWidget {
  const RecentTransactionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(backgroundColor: ref.watch(themeServiceProvider).getPrimary(), actions: [
          IconButton(icon: const Icon(Icons.add), onPressed: () {}),
          IconButton(icon: const Icon(Icons.settings), onPressed: () {})
        ]),
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const RecentTransactions(),
          const SizedBox(height: 35),
          Card(
              margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: SizedBox(
                  height: 300,
                  child: Stack(alignment: Alignment.topRight, children: [
                    Padding(
                        padding: const EdgeInsets.all(48),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                          CircleAvatar(
                              backgroundColor: ref.watch(themeServiceProvider).getSecondary(),
                              child: const Icon(Icons.bar_chart)),
                          const SizedBox(height: 10),
                          const Text('Where are my budgets, spending, bills, and more?'),
                          const SizedBox(height: 10),
                          const Text('Check out the new "Monthly" tab!')
                        ])),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.close))
                  ]))),
          const SizedBox(height: 100),
        ])));
  }
}
