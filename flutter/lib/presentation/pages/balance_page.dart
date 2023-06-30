import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../balance_widget.dart';
import '../chart_and_balance.dart';
import '../servicies/theme_service_provider.dart';
import '../top_categories.dart';
import '../top_mechants.dart';

class BalancePage extends ConsumerWidget {
  const BalancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: ref.watch(themeServiceProvider).getBackground(),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: AppBar(
                backgroundColor: ref.watch(themeServiceProvider).getBackground(),
                elevation: 0,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 22),
                ),
                actions: [
                  Padding(
                      padding: const EdgeInsets.only(top: 15, right: 15),
                      child: Text(
                        'Set budget',
                        style: TextStyle(
                            color: ref.watch(themeServiceProvider).getPrimary(),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ))
                ])),
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
          SizedBox(height: 20),
          BalanceWidget(),
          SizedBox(height: 20),
          ChartAndBalance(),
          SizedBox(height: 30),
          TopMechants(),
          SizedBox(height: 10),
          TopCategories()
        ])));
  }
}
