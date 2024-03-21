import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CrimeFrequency extends StatelessWidget {
  const CrimeFrequency({super.key});

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
    List<_ChartData> data1 = [
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
    List<_ChartData> data2 = [
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
    List<_ChartData> data3 = [
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
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: Color(0xFFE5E5E5),
          style: BorderStyle.solid,
          width: 1.2
        )
      ),
      child: SfCartesianChart(
        legend: Legend(isVisible: true, position: LegendPosition.bottom,isResponsive: true,alignment: ChartAlignment.center,),
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(minimum: 0, maximum: 100, interval: 10),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <CartesianSeries<_ChartData, String>>[
            ColumnSeries<_ChartData, String>(
                dataSource: data,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                name: 'Theft',
                color: Color(0xFFB56E6E)),
            ColumnSeries<_ChartData, String>(
                dataSource: data1,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                name: 'Assault',
                color: Color(0xFF61BA7A)),
            ColumnSeries<_ChartData, String>(
                dataSource: data2,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                name: 'Burglary',
                color: Color(0xFF6F5BA7)),
            ColumnSeries<_ChartData, String>(
                dataSource: data3,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                name: 'Drug Possession',
                color: Color(0xFFE39E1A))
          ]),
    
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
