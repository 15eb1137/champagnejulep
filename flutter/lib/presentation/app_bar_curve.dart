import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/balance_page.dart';
import 'servicies/theme_service_provider.dart';

class AppBarCurve extends ConsumerWidget {
  const AppBarCurve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [ref.watch(themeServiceProvider).getPrimary(), ref.watch(themeServiceProvider).getSecondary()]),
            boxShadow: [
              BoxShadow(
                color: ref.watch(themeServiceProvider).getBackground().withOpacity(0.1),
                spreadRadius: 10,
                blurRadius: 10,
                // changes position of shadow
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
          child: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute<BalancePage>(builder: (_) => const BalancePage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "\$",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          Text(
                            "1,752",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Available balance",
                        style: TextStyle(color: Colors.white.withOpacity(0.8)),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1663431512297-993006b0098b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2M3x8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Positioned(
                      top: 35,
                      child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: ref.watch(themeServiceProvider).getPrimary(), width: 2))),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}