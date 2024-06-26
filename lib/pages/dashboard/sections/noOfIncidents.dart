import 'package:dashboard_ksp/constants/fonts.dart';
import 'package:dashboard_ksp/pages/dashboard/controllers/dashboardHeroController.dart';
import 'package:dashboard_ksp/pages/dashboard/models/crime_trends_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:resize/resize.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class NoIncidents extends StatelessWidget {
  const NoIncidents({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetBuilder(
      init: DashboardHeroController(),
      builder: (controller) =>  Resize(
        builder: () =>  Obx(() => Container(
          
          margin: const EdgeInsets.symmetric(
            horizontal: 20
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
        
            children: [
              Expanded(child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        Text("Total Number of Incidents Reported:",style: ILEMSFonts.primary.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),).animate().fade(),
                        TextButton(onPressed: () {
                          
                        }, child: Text("View All",style: ILEMSFonts.primary.copyWith(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold
                        ),)).animate().fade()
                      ],
                    ),
                    const Gap(10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ActionChip(
                            backgroundColor: const Color(0xFFF8C835),
                            side: BorderSide.none,
                            label: Text("Law & Order",style: ILEMSFonts.primary,),onPressed: () {
                            
                          },).animate().fade(),
                          const Gap(10),
                          ActionChip(label: Text("Crime",style: ILEMSFonts.primary,),onPressed: () {
                            
                          },).animate().fade(),
                          const Gap(10),
                            
                          ActionChip(label: Text("Station Management",style: ILEMSFonts.primary,),onPressed: () {
                            
                          },).animate().fade(),
                          const Gap(10),
                            
                          ActionChip(label: Text("Investigation",style: ILEMSFonts.primary,),onPressed: () {
                            
                          },),
                          const Gap(10),
                            
                          ActionChip(label: Text("Court Monitoring",style: ILEMSFonts.primary,),onPressed: () {
                            
                          },).animate().fade()
                        ],
                      ),
                    ),
                    const Gap(20),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      child: Container(
                        
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Overview",style: ILEMSFonts.primary.copyWith(
                              color: const Color(0xFFE5AD00),
                              fontSize: 1.2.rem,
                              fontWeight: FontWeight.w700
                            ),),
                            const Gap(10),
                            Row(children: [
                              Expanded(child: Container(
                                color: const Color(0xFFF7E195),
                                height: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    
                                    Text("100",style: ILEMSFonts.primary.copyWith(
                                      fontSize: 1.5.rem,
                                      fontWeight: FontWeight.w900
                                    ),),
                                    Text("Total Incidents",style: ILEMSFonts.primary.copyWith(
                                      fontSize: 1.2.rem,
                                      fontWeight: FontWeight.w700
                                    ),),
                                  ],
                                )
                              )),
                              const Gap(10),
                              Expanded(child: Container(
                                color: const Color(0xFFD4F0A6),
                                height: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    
                                    Text("25",style: ILEMSFonts.primary.copyWith(
                                      fontSize: 1.5.rem,
                                      fontWeight: FontWeight.w900
                                    ),),
                                    Text("Arrests Made",style: ILEMSFonts.primary.copyWith(
                                      fontSize: 1.2.rem,
                                      fontWeight: FontWeight.w700
                                    ),),
                                  ],
                                ),
                              )),
                              const Gap(10),
        
                              Expanded(child: Container(
                                color: const Color(0xFFE0EDFF),
                                height: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    
                                    Text("50",style: ILEMSFonts.primary.copyWith(
                                      fontSize: 1.5.rem,
                                      fontWeight: FontWeight.w900
                                    ),),
                                    Text("Tickets Issued",style: ILEMSFonts.primary.copyWith(
                                      fontSize: 1.2.rem,
                                      fontWeight: FontWeight.w700
                                    ),),
                                  ],
                                ),
                              ))
                            ],)
                            ,
                            const Gap(10),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              color: const Color(0xFFF3F3F3),
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Action Items Completion Rate",style: ILEMSFonts.primary.copyWith(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  Text("85%",style: ILEMSFonts.primary.copyWith(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ).animate().fade()
                  ],
                ),
              )),
              const Gap(15),
              Expanded(child: Container(
                alignment: Alignment.topLeft,
      
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Analytics",style: ILEMSFonts.primary.copyWith(
                          color: Colors.black,
                          fontSize: 1.3.rem,
                          fontWeight: FontWeight.bold
                        ),),
                        TextButton(onPressed: () {
                          
                        }, child: Text("View All",style: ILEMSFonts.primary.copyWith(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold
                        ),)).animate().fade()
                      ],
                    ),
                    const Gap(10),
      
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                                            color: Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child:  Row(
                        children: [
                          ActionChip(
                            label: Text("Crime Trend Analysis",style: ILEMSFonts.primary,),
                            side: BorderSide.none,
                            onPressed: (){
      
                            },
                            backgroundColor: Color(0xFFF8C835),
                            ),
                            ActionChip(
                              elevation: 0,
                              surfaceTintColor: Color(0xFFF3F3F3),
                            label: Text("Arrest and Conviction Rates",style: ILEMSFonts.primary.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF414D55)
                            ),),
                            side: BorderSide.none,
                            onPressed: (){
      
                            },
                            backgroundColor: Color(0xFFF3F3F3),
                            )
                        ],
                      ),
      
                    )
                    ,Gap(10),
                   controller.crimeTrends.length != 0 ? Container(
                      width: MediaQuery.of(context).size.width,
                      child: SfCartesianChart(
                        legend: Legend(isVisible: true,position: LegendPosition.bottom),
                        tooltipBehavior: TooltipBehavior(enable: true),
                        
                        series: [
                          SplineSeries<CrimeTrendsModel, int>(

                            name: "Yearly Crime Trends",
                            color: Color(0xFFFF715B),
                            
                            dataSource: controller.crimeTrends,
                            xValueMapper: (CrimeTrendsModel sales, _) => sales.year!,
                            yValueMapper: (CrimeTrendsModel sales, _) => sales.total!,
                          )
                        ],
                      ),
      
                    ) : Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Center(
                        child: LoadingAnimationWidget.dotsTriangle(color: Color(0xFFFF715B), size: 50),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),)
      ),
    );
  }
}
  
  
class SalesData {
      SalesData(this.year, this.sales);
      final int year;
      final double sales;
  }