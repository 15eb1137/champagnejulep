import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'servicies/theme_service_provider.dart';

class VerificationWidget extends ConsumerWidget {
  const VerificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("Complete verification", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
          const SizedBox(height: 15),
          Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.01),
                  spreadRadius: 10,
                  blurRadius: 10,
                  // changes position of shadow
                )
              ]),
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("60%", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                          Text("3 of 10 completed",
                              style: TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.5)))
                        ]),
                    const SizedBox(height: 15),
                    Stack(children: [
                      Container(
                          width: double.infinity,
                          height: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10), color: Colors.black.withOpacity(0.04))),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                ref.watch(themeServiceProvider).getPrimary(),
                                ref.watch(themeServiceProvider).getSecondary()
                              ])))
                    ]),
                    const SizedBox(height: 15),
                    const Divider(),
                    const SizedBox(height: 10),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.account_circle, color: ref.watch(themeServiceProvider).getPrimary()),
                          const SizedBox(width: 20),
                          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            const Text("Personal information",
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                            const SizedBox(height: 8),
                            const Text("When you register for an account.", style: TextStyle(fontSize: 14)),
                            const SizedBox(height: 8),
                            const Text(
                              "we collect peronal information",
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 12),
                            Text("Continue",
                                style: TextStyle(
                                    color: ref.watch(themeServiceProvider).getPrimary(),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600))
                          ])
                        ]),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    Row(children: [
                      Icon(Icons.account_box, color: ref.watch(themeServiceProvider).getPrimary()),
                      const SizedBox(width: 20),
                      const Text("Verification", style: TextStyle(color: Colors.black, fontSize: 15))
                    ]),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    Row(children: [
                      Icon(Icons.email, color: ref.watch(themeServiceProvider).getPrimary()),
                      const SizedBox(width: 20),
                      const Text("Confirm email", style: TextStyle(color: Colors.black, fontSize: 15))
                    ])
                  ])))
        ]));
  }
}
