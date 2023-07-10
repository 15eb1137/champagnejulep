import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../servicies/theme_service_provider.dart';

class TransactionAddTypePage extends ConsumerWidget {
  const TransactionAddTypePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: AppBar(
                backgroundColor: ref.watch(themeServiceProvider).getWhite(),
                elevation: 0,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                title: const Text('Transaction Type'))),
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(padding: EdgeInsets.only(top: 16, bottom: 16)),
          CheckboxListTile(title: const Text('Income'), value: false, onChanged: (value) {}),
          CheckboxListTile(title: const Text('Expense'), value: true, onChanged: (value) {}),
          const Padding(padding: EdgeInsets.only(top: 16, bottom: 16), child: Text('PAYMENT TYPE')),
          CheckboxListTile(title: const Text('Cash'), value: true, onChanged: (value) {}),
          CheckboxListTile(title: const Text('Check'), value: false, onChanged: (value) {}),
          CheckboxListTile(title: const Text('Credit/Debit Card'), value: false, onChanged: (value) {}),
          const Padding(padding: EdgeInsets.only(top: 16, bottom: 16)),
          SwitchListTile(title: const Text('Split from last ATM'), value: true, onChanged: (value) {})
        ])));
  }
}
