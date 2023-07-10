import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../servicies/theme_service_provider.dart';
import 'transaction_add_type_page.dart';

class TransactionAddPage extends ConsumerWidget {
  const TransactionAddPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: AppBar(
                backgroundColor: ref.watch(themeServiceProvider).getWhite(),
                elevation: 0,
                leadingWidth: 60,
                leading: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                centerTitle: true,
                title: Text(
                  'Add Transaction',
                  style: TextStyle(color: ref.watch(themeServiceProvider).getBlack()),
                ))),
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: const Text('\$0.00', style: TextStyle(fontSize: 64))),
          ListTile(
              title: const Text('Finding your location...'),
              trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [CircularProgressIndicator(), Icon(Icons.arrow_forward_ios)])),
          ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute<TransactionAddTypePage>(builder: (_) => const TransactionAddTypePage()));
              },
              title: const Text('Expense'),
              subtitle: const Text('Cash'),
              trailing: const Icon(Icons.arrow_forward_ios)),
        ])));
  }
}
