import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'servicies/theme_service_provider.dart';

class ChartAndBalance extends ConsumerWidget {
  const ChartAndBalance({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: 200,
        child: Stack(children: [
          SizedBox(
              width: double.infinity,
              height: 150,
              child: LineChart(LineChartData(
                  gridData: FlGridData(show: false, drawVerticalLine: true),
                  titlesData: FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),
                  minX: 0,
                  maxX: 11,
                  minY: 0,
                  maxY: 6,
                  lineBarsData: [
                    LineChartBarData(
                        spots: [
                          const FlSpot(0, 3),
                          const FlSpot(2.6, 2.5),
                          const FlSpot(4.9, 4),
                          const FlSpot(6.7, 3.5),
                          const FlSpot(8, 4.5),
                          const FlSpot(9.5, 3),
                          const FlSpot(11, 5)
                        ],
                        isCurved: true,
                        color: ref.watch(themeServiceProvider).getPrimary(),
                        // colors: gradientColors,
                        barWidth: 2,
                        isStrokeCapRound: true,
                        dotData: FlDotData(
                          show: false,
                        ),
                        belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(colors: [
                              ref.watch(themeServiceProvider).getPrimary(),
                              ref.watch(themeServiceProvider).getSecondary()
                            ])
                            // colors:
                            //     gradientColors.map((color) => color.withOpacity(0.3)).toList(),
                            ))
                  ]))),
          Padding(
              padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
              child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.01), spreadRadius: 10, blurRadius: 10
                        // changes position of shadow
                        )
                  ]),
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        Flexible(
                            child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.redAccent),
                          ),
                          const SizedBox(width: 15),
                          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Text("Spent", style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.5))),
                            const SizedBox(height: 3),
                            const Text("\$3,460", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500))
                          ])
                        ])),
                        Flexible(
                            child: Row(children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: ref.watch(themeServiceProvider).getPrimary()),
                          ),
                          const SizedBox(width: 15),
                          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Text("Earned", style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.5))),
                            const SizedBox(height: 3),
                            const Text("\$1,890", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500))
                          ])
                        ]))
                      ]))))
        ]));
  }
}
