import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopMechants extends ConsumerWidget {
  const TopMechants({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const merchantList = [
      <String, dynamic>{
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Domino%27s_pizza_logo.svg/1200px-Domino%27s_pizza_logo.svg.png",
        "name": "Domino's Pizza",
        "transaction": "5 Transactions",
        "price": "\$254"
      },
      <String, dynamic>{
        "img":
            "https://www.lifewire.com/thmb/4sWifKedQ1jWQAKFN3SHyMsu9FQ=/2710x1806/filters:fill(auto,1)/dropbox-5b9121a0c9e77c007b5f5ea6.png",
        "name": "Dropbox",
        "transaction": "3 Transactions",
        "price": "\$150"
      },
      <String, dynamic>{
        "img":
            "https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1200px-Starbucks_Corporation_Logo_2011.svg.png",
        "name": "Starbucks",
        "transaction": "4 Transactions",
        "price": "\$120"
      }
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Top merchant",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(merchantList.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration:
                                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.01),
                                  spreadRadius: 10,
                                  blurRadius: 10,
                                  // changes position of shadow
                                ),
                              ]),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(merchantList[index]['img'] as String),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  merchantList[index]['name'] as String,
                                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  merchantList[index]['transaction'] as String,
                                  style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          merchantList[index]['price'] as String,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Divider()
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
