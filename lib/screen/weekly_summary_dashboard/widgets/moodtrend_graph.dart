import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly_summary_dashboard/helpers/appcolors.dart';
import 'package:weekly_summary_dashboard/helpers/screen_config.dart';
import 'package:weekly_summary_dashboard/screen/weekly_summary_dashboard/controller/weekly_summary_controller.dart';

class MoodtrendGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<WeeklySummaryController>();
    // ScreenUtil.getInstance().init(context);
    return AspectRatio(
      aspectRatio: 1.3,
      child: LineChart(
        LineChartData(
          minY: 0,
          maxY: 5,
          gridData: const FlGridData(show: true, drawVerticalLine: false),
          titlesData: FlTitlesData(
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: true, interval: 1),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  int index = value.toInt();
                  if (index >= 0 && index < provider.days2.length) {
                    return Text(provider.days2[index]);
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
            rightTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: List.generate(
                provider.values.length,
                (i) => FlSpot(i.toDouble(), provider.values[i]),
              ),
              isCurved: true,
              color: AppColors.green,
              barWidth: 3,
              dotData: const FlDotData(show: false),
            ),
          ],
        ),
      ),
    );
  }
}
