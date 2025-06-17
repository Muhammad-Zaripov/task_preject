import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:task_preject/core/widgets/rounder_widget.dart';

class RecentWidget extends StatelessWidget {
  const RecentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RounderWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recent consumption',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 150,
            child: LineChart(
              LineChartData(
                gridData: const FlGridData(show: false),
                titlesData: const FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: const [
                      // FlSpot(0, 4),
                      // FlSpot(1, 4.3),
                      // FlSpot(2, 3.8),
                      // FlSpot(3, 4.5),
                      // FlSpot(4, 3.7),
                      FlSpot(0, 3.7),
                      FlSpot(1, 4),
                      FlSpot(2, 3.4),
                      FlSpot(3, 3.9),
                      FlSpot(4, 3.2),
                    ],
                    isCurved: true,
                    color: Colors.black,
                    barWidth: 2,
                    dotData: const FlDotData(show: true),
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
                minX: 0,
                maxX: 4,
                minY: 0,
                maxY: 7,
              ),
            ),
          ),
          TimelineWidget(),
        ],
      ),
    );
  }
}

class TimelineWidget extends StatelessWidget {
  final List<String> months = const ['Dec.', 'Jan.', 'Feb.', 'Mar.', 'Apr.'];

  const TimelineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 1,
          color: const Color(0xff979797),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: months.map((month) => _buildMonthItem(month)).toList(),
        ),
      ],
    );
  }

  Widget _buildMonthItem(String month) {
    return Column(
      children: [
        Container(width: 1, height: 10, color: const Color(0xff979797)),
        const SizedBox(height: 4),
        Text(
          month,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xff979797),
          ),
        ),
      ],
    );
  }
}

class LineChartMonthsWidget extends StatelessWidget {
  final List<String> months = const ['Dec.', 'Jan.', 'Feb.', 'Mar.', 'Apr.'];

  const LineChartMonthsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final spacing = width / (months.length - 1);

        return Stack(
          children: [
            Container(
              width: double.infinity,
              height: 1,
              color: const Color(0xff979797),
            ),
            ...months.asMap().entries.map((entry) {
              final index = entry.key;
              final month = entry.value;
              final left = index == 0
                  ? 0.0
                  : index == months.length - 1
                  ? null
                  : spacing * index;
              final right = index == months.length - 1 ? 0.0 : null;

              return Positioned(
                left: left,
                right: right,
                child: Column(
                  children: [
                    Container(
                      width: 1,
                      height: 10,
                      color: const Color(0xff979797),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      month,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff979797),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        );
      },
    );
  }
}
