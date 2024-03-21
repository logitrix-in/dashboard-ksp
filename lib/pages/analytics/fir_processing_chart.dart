import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FIRProcessingChart extends StatelessWidget {
  const FIRProcessingChart({super.key});

  @override
  Widget build(BuildContext context) {
    List<_ChartData> data = [
      _ChartData('CHN', 12),
      _ChartData('GER', 15),
      _ChartData('RUS', 30),
      _ChartData('BRZ', 6.4),
      _ChartData('IND', 14)
    ];
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: const Color(0xFFE5E5E5),
          style: BorderStyle.solid,
          width: 1.2
        )
      ),
      
      child: SfCartesianChart(
                primaryXAxis: const CategoryAxis(),
                primaryYAxis: const NumericAxis(minimum: 0, maximum: 40, interval: 10),
                tooltipBehavior: TooltipBehavior(
                  enable: true
                ),
                legend: const Legend(
                  isVisible: true, position: LegendPosition.bottom,isResponsive: true
                
                ),
                series: <CartesianSeries<_ChartData, String>>[
                  BarSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y,
                      name: 'Gold',
                      color: const Color(0xFf5E77FE))
                ]),
    );
  }
}
class _ChartData {
  _ChartData(this.x, this.y);
 
  final String x;
  final double y;
}