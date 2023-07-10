import 'package:flutter/material.dart';

import '../activities_list.dart';
import '../app_bar_balance.dart';
import '../app_bar_curve.dart';
import '../news_and_promo_widget.dart';
import '../recent_transactions.dart';
import '../shortage_info.dart';
import '../verification_widget.dart';
import 'recent_transactions_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Dashboard'), actions: [
          IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute<RecentTransactionsPage>(builder: (_) => const RecentTransactionsPage()));
              })
        ]),
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 300, child: Stack(children: const [AppBarCurve(), ShortageInfo()])),
          const ActivitiesList(),
          const RecentTransactions(),
          const SizedBox(height: 35),
          const AppBarBalance(),
          const SizedBox(height: 35),
          const VerificationWidget(),
          const SizedBox(height: 35),
          const NewsAndPromoWidget(),
          const SizedBox(height: 100),
        ])));
  }
}
