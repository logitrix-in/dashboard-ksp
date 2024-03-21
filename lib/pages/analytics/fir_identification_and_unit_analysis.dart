import 'package:dashboard_ksp/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FIRIdentificationChart extends StatelessWidget {
  const FIRIdentificationChart({super.key});

  @override
  Widget build(BuildContext context) {
    List<_ChartData> data = [
      _ChartData('Jan', 12),
      _ChartData('Feb', 15),
      _ChartData('Mar', 30),
      _ChartData('Apr', 6.4),
      _ChartData('May', 14),
      _ChartData('Jun', 14),
      _ChartData('Jul', 14),
      _ChartData('Aug', 14),
      
      _ChartData('Sep', 14),
      _ChartData('Oct', 14),
      _ChartData('Nov', 14),
      _ChartData('Dec', 14),
    ];
    return SfCartesianChart(
        title: ChartTitle(
          text: "Victim Counts by Age Group",
          textStyle: ILEMSFonts.primary.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w400
          )
        ),
        legend: Legend(isVisible: true, position: LegendPosition.bottom,isResponsive: true),
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(minimum: 0, maximum: 100, interval: 10),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <CartesianSeries<_ChartData, String>>[
            ColumnSeries<_ChartData, String>(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
                dataSource: data,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                name: '2022',
                color: Color(0xFF344BFD)),
            
          ])
    ;
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
