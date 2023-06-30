import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'servicies/theme_service_provider.dart';

class TopCategories extends ConsumerWidget {
  const TopCategories({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const categoryList = [
      <String, dynamic>{"img": "🍔", "name": "Eating out", "price": "\$659", "percentage": 0.5},
      <String, dynamic>{"img": "💳", "name": "Shopping", "price": "\$2500", "percentage": 0.9},
      <String, dynamic>{"img": "🚀", "name": "Travel & trip", "price": "\$1200", "percentage": 0.3},
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Top category",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(categoryList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    width: 150,
                    height: 220,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.01),
                        spreadRadius: 10,
                        blurRadius: 10,
                        // changes position of shadow
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 80,
                            child: CircleProgressBar(
                              foregroundColor: ref.watch(themeServiceProvider).getPrimary(),
                              backgroundColor: Colors.black.withOpacity(0.1),
                              value: categoryList[index]['percentage'] as double,
                              child: Center(
                                  child: Text(
                                categoryList[index]['img'] as String,
                                style: const TextStyle(fontSize: 22),
                              )),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            categoryList[index]['name'] as String,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            categoryList[index]['price'] as String,
                            style: TextStyle(
                                fontSize: 16, color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                                color: ref.watch(themeServiceProvider).getBackground(),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "on track",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w600, color: Colors.black.withOpacity(0.7)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
