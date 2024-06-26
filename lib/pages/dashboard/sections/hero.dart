import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:dashboard_ksp/colors/colors.dart';
import 'package:dashboard_ksp/constants/fonts.dart';
import 'package:dashboard_ksp/pages/dashboard/controllers/dashboardHeroController.dart';
import 'package:dashboard_ksp/pages/dashboard/models/crime_reported_model.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:resize/resize.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class DashboardHero extends StatelessWidget {
  const DashboardHero({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Resize(
        builder: () => GetBuilder(
              init: DashboardHeroController(),
              builder: (controller) => Obx(() => Container(
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
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                  text: " & Management Dashboard",
                                  style: ILEMSFonts.primary.copyWith(
                                      color: Colors.black,
                                      fontSize: 1.5.rem,
                                      fontWeight: FontWeight.w600))
                            ])).animate().fade(),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: DateTimeFormField(
                            onChanged: (value) {},
                            decoration: const InputDecoration(
                                labelText: "Enter Date",
                                border: OutlineInputBorder()),
                          ).animate().fade(),
                        )
                      ],
                    ),
                    const Gap(10),
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Wrap(
                        // runAlignment: WrapAlignment.spaceBetween,
                        alignment: WrapAlignment.spaceBetween,
                        // spacing: 1,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.white,
                            elevation: 1,
                            surfaceTintColor: Colors.white,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 14.rem,
                              width: MediaQuery.of(context).size.width / 4,
                              child: Container(
                                
                                // width: 250,
                                height: 15.rem,
                                color: Colors.white,
                                
                                child: controller.crimeReported.length != 0 ? SfCircularChart(
                                  legend: Legend(
                                      isVisible: true,
                                      position: LegendPosition.left,
                                      isResponsive: true,
                                      overflowMode: LegendItemOverflowMode.wrap,
                                      
                                      
                                      textStyle: ILEMSFonts.primary.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.9.rem)
                                  ),
                                  title: ChartTitle(
                                    text: "Crime Reported",
                                    alignment: ChartAlignment.near,
                                    textStyle: ILEMSFonts.primary.copyWith(
                                        color: Colors.black,
                                        fontSize: 1.1.rem,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  margin: const EdgeInsets.all(0),
                              
                                  // legend: Legend(isVisible: true),
                                  tooltipBehavior:
                                      TooltipBehavior(enable: true),
                                  series: [
                                    // Render pie chart
                                    DoughnutSeries(
                                      
                                        explode: true,
                                        innerRadius: "70%",
                                        // explodeAll: true,
                                        name: "Crime Reported",
                                        dataSource: controller.crimeReported,
                                        legendIconType: LegendIconType.circle,
                                        pointColorMapper: (datum, index) =>
                                            datum.color,
                                        xValueMapper: (datum, index) =>
                                            datum.x ,
                                        yValueMapper: (datum, index) =>
                                            datum.y)
                                  ],
                                ) : Center(child: LoadingAnimationWidget.dotsTriangle(color: Color(
                                  0xFFFF715B
                                ), size: 60),),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.white,
                            margin: const EdgeInsets.all(0),
                            elevation: 1,
                            surfaceTintColor: Colors.white,
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width / 3.8,
                              height: 14.rem,
                              child: Stack(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Container(
                                        padding: const EdgeInsets.all(10),
                                        // height: 30,
                                        color: const Color(0xFFE5FFCA),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            // Gap(10),
                                            Expanded(
                                              flex: 10,
                                              child: Center(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    AnimatedFlipCounter(
                                                      curve: Curves.easeIn,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      value: 45,
                                                      textStyle: ILEMSFonts
                                                          .primary
                                                          .copyWith(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 2.5.rem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                    Text(
                                                      "Resolved",
                                                      style: ILEMSFonts.primary
                                                          .copyWith(
                                                              color:
                                                                  const Color(
                                                                0xFF2A4D15,
                                                              ),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  1.5.rem),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                      Expanded(
                                          child: Container(
                                        padding: const EdgeInsets.all(10),
                                        // height: 30,
                                        color: const Color(0xFFFDFFA3),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Center(
                                              child: Text(
                                                "45",
                                                style: ILEMSFonts.primary
                                                    .copyWith(
                                                        color: Colors.black,
                                                        fontSize: 2.5.rem,
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                            ),
                                            Text(
                                              "Pending",
                                              style: ILEMSFonts.primary
                                                  .copyWith(
                                                      color: const Color(
                                                        0xFFB27C13,
                                                      ),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 1.5.rem),
                                            ),
                                          ],
                                        ),
                                      )),
                                    ],
                                  ),
                                  Positioned(
                                      child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Text(
                                      "Incidents Resolved vs. Pending:",
                                      style: ILEMSFonts.primary.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 1.0.rem),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.white,
                            elevation: 1,
                            surfaceTintColor: Colors.white,
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              height: 14.rem,
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Applications",
                                        style: ILEMSFonts.primary.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 1.1.rem),
                                      ),
                                      TextButton(
                                          style: TextButton.styleFrom(
                                              foregroundColor: Colors.black),
                                          onPressed: () {},
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "View All",
                                                style: ILEMSFonts.primary
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w500),
                                              ),
                                              const Icon(Icons
                                                  .arrow_right_alt_outlined)
                                            ],
                                          ))
                                    ],
                                  ),
                                  const Gap(5),
                                  Expanded(
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      color: Colors.white,
                                      child: GridView(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisSpacing: 5,
                                          crossAxisCount: 3,
                                        ),
                                        children: [
                                          Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFF9D4B9),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Iconify(
                                                      Mdi.reload,
                                                      size: 90,
                                                      color: Color(0xFFFFFFFF)
                                                          .withOpacity(0.3),
                                                    ),
                                                    Text(
                                                      "24",
                                                      style: ILEMSFonts.primary
                                                          .copyWith(
                                                              fontSize: 50,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  "Pending",
                                                  style: ILEMSFonts.primary
                                                      .copyWith(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: const Color(0xFF69B8F1),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Iconify(
                                                      Mdi.calendar_clock,
                                                      size: 90,
                                                      color: Color(0xFFFFFFFF)
                                                          .withOpacity(0.3),
                                                    ),
                                                    Text(
                                                      "12",
                                                      style: ILEMSFonts.primary
                                                          .copyWith(
                                                              fontSize: 50,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  "Active",
                                                  style: ILEMSFonts.primary
                                                      .copyWith(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFFD4F0A6),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Iconify(
                                                      Mdi.calendar_clock,
                                                      size: 90,
                                                      color: Color(0xFFFFFFFF)
                                                          .withOpacity(0.3),
                                                    ),
                                                    Text(
                                                      "5",
                                                      style: ILEMSFonts.primary
                                                          .copyWith(
                                                              fontSize: 50,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  "Past",
                                                  style: ILEMSFonts.primary
                                                      .copyWith(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ).animate().fade()
                  ],
                ),
              
              ),)
            ));
  }
}
