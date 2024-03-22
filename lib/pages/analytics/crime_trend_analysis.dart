import 'package:dashboard_ksp/pages/dashboard/controllers/dashboardHeroController.dart';
import 'package:dashboard_ksp/pages/dashboard/models/crime_trends_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CrimeTrendsAnalysis extends StatelessWidget {
  const CrimeTrendsAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetBuilder(
      init: DashboardHeroController(),
      builder: (controller) =>  Obx(() => controller.crimeTrends.length > 0 ? Container(
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
            SplineSeries<CrimeTrendsModel, int>(
                color: Color(0xFFFF715B),
                dataSource: controller.crimeTrends,
                name: "Yearly Trends",
                enableTooltip: true,
                legendIconType: LegendIconType.circle,
                isVisibleInLegend: true,
                
                // emptyPointSettings: EmptyPointSettings(mode: EmptyPointMode.drop),
                xValueMapper: (CrimeTrendsModel sales, _) => sales.year,
                yValueMapper: (CrimeTrendsModel sales, _) => sales.total)
          ],
        ),
      ):Center(
        child: LoadingAnimationWidget.dotsTriangle(color: Color(0xFFFF715B), size: 60),
      ),)
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final int year;
  final double sales;
}
