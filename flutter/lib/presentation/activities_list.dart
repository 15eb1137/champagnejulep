import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'servicies/theme_service_provider.dart';

class ActivitiesList extends ConsumerWidget {
  const ActivitiesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Map<String, dynamic>> items = [
      <String, dynamic>{"title": "Transfer", "icon": Icons.send},
      <String, dynamic>{"title": "My Card", "icon": Icons.credit_card},
      <String, dynamic>{"title": "Insight", "icon": Icons.area_chart}
    ];
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("Activity", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
          const SizedBox(height: 15),
          Wrap(
              spacing: 25,
              children: List.generate(items.length, (index) {
                return Container(
                    width: (MediaQuery.of(context).size.width / 3) - 30,
                    height: (MediaQuery.of(context).size.width / 3) - 25,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.01),
                        spreadRadius: 10,
                        blurRadius: 10,
                        // changes position of shadow
                      )
                    ]),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                ref.watch(themeServiceProvider).getPrimary(),
                                ref.watch(themeServiceProvider).getSecondary()
                              ]),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(child: Icon(items[index]['icon'] as IconData, color: Colors.white, size: 20))),
                      const SizedBox(height: 12),
                      Text(items[index]['title'] as String,
                          style: TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.5)))
                    ]));
              }))
        ]));
  }
}
