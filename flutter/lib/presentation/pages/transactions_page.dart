import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../editable_list_model.dart';
import '../editable_list_tile.dart';
import '../servicies/theme_service_provider.dart';

class TransactionsPage extends ConsumerStatefulWidget {
  const TransactionsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => TransactionsPageState();
}

class TransactionsPageState extends ConsumerState<TransactionsPage> {
  late bool lastIsEditingMode;
  late List<Map<String, dynamic>> transactions;

  @override
  void initState() {
    super.initState();
    lastIsEditingMode = false;
    transactions = [
      <String, dynamic>{
        'icon': Icons.compare_arrows,
        'title': 'ASF*VIVE FITNESS TORON...',
        'subtitle': 'Credit Card Payment',
        'date': 'May 24, 2023'
      },
      <String, dynamic>{
        'icon': Icons.add,
        'title': 'ASF*VIVE FITNESS TORON...',
        'subtitle': 'Gym',
        'date': 'May 22, 2023'
      },
      <String, dynamic>{
        'icon': Icons.add,
        'title': 'ASF*VIVE FITNESS TORON...',
        'subtitle': 'Gym',
        'date': 'May 22, 2023'
      },
      <String, dynamic>{
        'icon': Icons.directions_bike,
        'title': 'Uber CANADA/UBERTRIP...',
        'subtitle': 'Ride Share',
        'date': 'May 18, 2023'
      },
      <String, dynamic>{
        'icon': Icons.compare_arrows,
        'title': 'EFT CREDIT CANADA',
        'subtitle': 'Credit Card Payment',
        'date': 'May 15, 2023'
      },
      <String, dynamic>{
        'icon': Icons.compare_arrows,
        'title': 'FREEDOM MOBILE 877-946...',
        'subtitle': 'Mobile Phone',
        'date': 'May 04, 2023'
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Transactions', style: TextStyle(fontSize: 16)),
            centerTitle: true,
            foregroundColor: ref.watch(themeServiceProvider).getBlack(),
            backgroundColor: ref.watch(themeServiceProvider).getWhite(),
            actions: [
              IconButton(icon: const Icon(Icons.search), onPressed: () {}),
              IconButton(icon: const Icon(Icons.more_vert), onPressed: () {})
            ]),
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ActionChip(
                        label: Row(children: const [Text('Filter'), Icon(Icons.keyboard_arrow_down)]),
                        onPressed: () {
                          showModalBottomSheet<_FilterBottomSheet>(
                              context: context, builder: (context) => const _FilterBottomSheet());
                        },
                        backgroundColor: ref.watch(themeServiceProvider).getWhite(),
                        side: BorderSide(color: ref.watch(themeServiceProvider).getBlack()),
                      )),
                  ActionChip(
                    label: Row(children: const [Text('Sort'), Icon(Icons.keyboard_arrow_down)]),
                    onPressed: () {
                      showModalBottomSheet<SizedBox>(context: context, builder: (context) => const _SortBottomSheet());
                    },
                    backgroundColor: ref.watch(themeServiceProvider).getWhite(),
                    side: BorderSide(color: ref.watch(themeServiceProvider).getBlack()),
                  ),
                ]),
                TextButton(onPressed: () {}, child: const Text('Edit'))
              ])),
          const SizedBox(height: 20),
          Container(
              padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: ref.watch(themeServiceProvider).getSecondary(),
              child: const Text('May 2023', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          ListView.builder(
              itemBuilder: (context, index) {
                if (index == transactions.length - 1 && lastIsEditingMode) {
                  lastIsEditingMode = false;
                  return EditableListTile(
                    model: EditableListModel(
                        icon: transactions[index]['icon'] as IconData,
                        title: transactions[index]['title'] as String,
                        subTitle: transactions[index]['subtitle'] as String,
                        date: transactions[index]['date'] as String),
                    onChanged: (updatedModel) {
                      transactions[index] = <String, dynamic>{
                        'icon': updatedModel.icon,
                        'title': updatedModel.title,
                        'subtitle': updatedModel.subTitle,
                        'date': updatedModel.date
                      };
                    },
                    initIsEditingMode: true,
                  );
                } else {
                  return EditableListTile(
                    model: EditableListModel(
                        icon: transactions[index]['icon'] as IconData,
                        title: transactions[index]['title'] as String,
                        subTitle: transactions[index]['subtitle'] as String,
                        date: transactions[index]['date'] as String),
                    onChanged: (updatedModel) {
                      transactions[index] = <String, dynamic>{
                        'icon': updatedModel.icon,
                        'title': updatedModel.title,
                        'subtitle': updatedModel.subTitle,
                        'date': updatedModel.date
                      };
                    },
                  );
                }
              },
              shrinkWrap: true,
              itemCount: transactions.length,
              physics: const NeverScrollableScrollPhysics())
        ])),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              transactions.add(<String, dynamic>{
                'icon': Icons.compare_arrows,
                'title': '',
                'subtitle': '',
                'date': 'July 10, 2023'
              });
              setState(() {
                lastIsEditingMode = true;
              });
            },
            child: const Icon(Icons.add)));
  }
}

class _FilterBottomSheet extends ConsumerWidget {
  const _FilterBottomSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          children: [
            SizedBox(
                height: 56,
                child: Stack(
                  children: [
                    TextButton(
                      child: const Text('Reset'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Center(
                      child: Text('Filters', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    )
                  ],
                )),
            Expanded(
                child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.check_circle, color: ref.watch(themeServiceProvider).getPrimary()),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Filter by all transactions'))
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Filter by uncategorized'))
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Filter by income'))
                ]),
              ],
            ))
          ],
        ));
  }
}

class _SortBottomSheet extends ConsumerWidget {
  const _SortBottomSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          children: [
            SizedBox(
                height: 56,
                child: Stack(
                  children: [
                    TextButton(
                      child: const Text('Reset'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Center(
                      child: Text('Sort', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    )
                  ],
                )),
            Expanded(
                child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.check_circle, color: ref.watch(themeServiceProvider).getPrimary()),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Sort by date (new to old)'))
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Sort by date (old to new)'))
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Sort by amount (high to low)'))
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Sort by amount (low to high)'))
                ]),
              ],
            ))
          ],
        ));
  }
}
