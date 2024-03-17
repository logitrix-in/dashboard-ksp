import 'package:dashboard_ksp/colors/colors.dart';
import 'package:dashboard_ksp/constants/fonts.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resize/resize.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
    ChartData(this.x, this.y, [this.color]);
    final String x;
    final double y;
    final Color? color;
}

class DashboardHero extends StatelessWidget {
  const DashboardHero({super.key});
  
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
            ChartData('David', 25),
            ChartData('Steve', 38),
            ChartData('Jack', 34),
            ChartData('Others', 52)
        ];
    return Resize(builder: () => Container(
      margin: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(TextSpan(
                  text: "Police Station Supervision",
                  style: ILEMSFonts.primary.copyWith(
                    color: RichaColors.primary,
                    fontSize: 1.5.rem,
                    fontWeight: FontWeight.w600
                  ),children: [
                    TextSpan(
                      text:" & Management Dashboard",
                      style: ILEMSFonts.primary.copyWith(
                        color: Colors.black,
                        fontSize: 1.5.rem,
                        fontWeight: FontWeight.w600)
                    )
                  ]
              )),
          
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                  child: DateTimeFormField(onChanged: (value) {
                    
                  },
                  decoration: const InputDecoration(
                    labelText: "Enter Date",
                    border: OutlineInputBorder()
                  ),
                  ),
                )
              
            ],
          ),
           Card(
            color: Colors.white,
            elevation: 1,
            surfaceTintColor: Colors.white,
            child: Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width /4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Crime Reported",style: ILEMSFonts.primary.copyWith(
                    color: Colors.black,
                    fontSize: 12.5,
                    fontWeight: FontWeight.bold
                  ),),
                  Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Total",style: ILEMSFonts.primary.copyWith(
                            color: Colors.black,
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold
                          ),),
                          const Gap(10),
                          Text("100",style: ILEMSFonts.primary.copyWith(
                            color: RichaColors.primary,
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Container(
                        child: SfCircularChart(
                          series: [
                            // Render pie chart
                            PieSeries(
                              dataSource: chartData,
                              pointColorMapper:(datum, index) => datum.color,
                                xValueMapper: (datum, index) => datum.x,
                                yValueMapper: (datum, index) => datum.y
                              
                            )
                        ],
                        ),
                      )
                    ],
                  )
                  
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}