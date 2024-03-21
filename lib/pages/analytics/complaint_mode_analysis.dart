import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ComplaintMode extends StatelessWidget {
  const ComplaintMode({super.key});

  @override
  Widget build(BuildContext context) {
    List<_ChartData> data = [
      _ChartData('In Person', 40,const Color(0xFF344BFD)),
      _ChartData('Online', 20,const Color(0xFFF4A79D)),
      _ChartData('Phone', 30,const Color(0xFFF68D2B)),
      _ChartData('Others', 10,const Color(0xFfFFD200))
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
      
      child: SfCircularChart(
        
        title: const ChartTitle(
          text: "Complaint Mode Analysis",
          textStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400
          )
        ),
        legend: const Legend(isVisible: true, position: LegendPosition.right,isResponsive: true),
              tooltipBehavior: TooltipBehavior(
                
                enable: true
              ),
              
              series: <CircularSeries<_ChartData, String>>[
      
                DoughnutSeries<_ChartData, String>(
                  innerRadius: "75%",
                  
                  pointColorMapper: (datum, index) => datum.color,
                    dataSource: data,
                    xValueMapper: (_ChartData data, _) => data.x,
                    yValueMapper: (_ChartData data, _) => data.y,
                    name: 'Gold')
              ]),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y,this.color);
 
  final String x;
  final double y;
  final Color color;
}