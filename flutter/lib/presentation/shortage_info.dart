import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'servicies/theme_service_provider.dart';

class ShortageInfo extends ConsumerWidget {
  const ShortageInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        top: 160,
        child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Stack(alignment: Alignment.topRight, children: [
              Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: ref.watch(themeServiceProvider).getSecondary(),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: ref.watch(themeServiceProvider).getBlack().withOpacity(0.01),
                          spreadRadius: 10,
                          blurRadius: 10,
                          // changes position of shadow
                        ),
                      ]),
                  child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      leading: const CircleAvatar(child: Icon(Icons.currency_yen)),
                      title: const Text("Save more every week with spending targets"),
                      subtitle: Text("Create weekly targets",
                          style: TextStyle(color: ref.watch(themeServiceProvider).getPrimary(), height: 2)))),
              IconButton(onPressed: () {}, icon: const Icon(Icons.close))
            ])));
  }
}
