import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CrimeTrendsAnalysis extends StatelessWidget {
  const CrimeTrendsAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(2010, 5),
      SalesData(2011, 28),
      SalesData(2012, 100),
      SalesData(2013, 50),
      SalesData(2014, 30),
      SalesData(2021, 30)
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
        tooltipBehavior: TooltipBehavior(enable: true),
        legend: Legend(
            isVisible: true, position: LegendPosition.bottom, isResponsive: true),
        series: [
          SplineSeries<SalesData, int>(
              color: Color(0xFFFF715B),
              dataSource: chartData,
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales)
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final int year;
  final double sales;
}
