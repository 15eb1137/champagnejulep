import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BalanceWidget extends ConsumerWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
            child: Column(
              children: const [
                Text(
                  "Your balance is \$1,752",
                  style: TextStyle(
                      fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "By this time last month, you spent\n slightly higher (\$2,450)",
                  style: TextStyle(fontSize: 14, height: 1.6),
                ),
              ],
            ),
          );
  }
}