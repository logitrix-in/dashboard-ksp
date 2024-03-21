import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dashboard_ksp/colors/colors.dart';
import 'package:dashboard_ksp/constants/fonts.dart';
import 'package:dashboard_ksp/pages/analytics/complaint_mode_analysis.dart';
import 'package:dashboard_ksp/pages/analytics/crime_frequency.dart';
import 'package:dashboard_ksp/pages/analytics/crime_trend_analysis.dart';
import 'package:dashboard_ksp/pages/analytics/fir_identification_and_unit_analysis.dart';
import 'package:dashboard_ksp/pages/analytics/fir_processing_chart.dart';
import 'package:dashboard_ksp/pages/analytics/victim_counts_by_age_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:resize/resize.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:flutter/services.dart' show rootBundle;


class AnalyticsBody extends StatefulWidget {
  const AnalyticsBody({super.key});

  @override
  State<AnalyticsBody> createState() => _AnalyticsBodyState();
}

class _AnalyticsBodyState extends State<AnalyticsBody> {
  bool isReady = false;
  Future<List<Map<String, dynamic>>> readDistrictsWithRandomColor(String filePath) async{
  
  final jsonString =  await rootBundle.loadString(filePath);
  final data = json.decode(jsonString);
  // print(data);
  List<Map<String, dynamic>> districts = [];
  Random random = Random();
  for (var feature in data['features']) {
    var properties = feature['properties'];
    var district = {
      "district": properties['district'],
      "dt_code": properties['dt_code'],
      "color": random.nextInt(3501) 
    };
    districts.add(district);
  }

  return districts;
}
  late List<Model> karnatakaData;
  late List<Model> westBengalData;
  late List<Model> MHData;

  
  void initMap() async{
    karnatakaData = await readDistrictsWithRandomColor("assets/map/karnataka.json").then((value) => value.map((e) => Model(e["district"], e['color'] > 3000 ? Color(0xFFD45500) : e['color'] < 3000 && e['color'] > 2000 ? Color(0xFFFF9955):e['color'] <2000 && e['color'] > 1000 ? Color(0xFFFFE6D5) : Color(0xFFECECEC), e["dt_code"])).toList());
    //print(data);
    westBengalData = await readDistrictsWithRandomColor("assets/map/westbengal.json").then((value) => value.map((e) => Model(e["district"], e['color'] > 3000 ? Color(0xFFD45500) : e['color'] < 3000 && e['color'] > 2000 ? Color(0xFFFF9955):e['color'] <2000 && e['color'] > 1000 ? Color(0xFFFFE6D5) : Color(0xFFECECEC), e["dt_code"])).toList());
    MHData = await readDistrictsWithRandomColor("assets/map/maharashtra.json").then((value) => value.map((e) => Model(e["district"], e['color'] > 3000 ? Color(0xFFD45500) : e['color'] < 3000 && e['color'] > 2000 ? Color(0xFFFF9955):e['color'] <2000 && e['color'] > 1000 ? Color(0xFFFFE6D5) : Color(0xFFECECEC), e["dt_code"])).toList());
    isReady=true;
    setState(() {
      
    });
  }

  @override
  void initState(){
    
    super.initState();
    initMap();
  }

  @override
  Widget build(BuildContext context) {
    

    
    return Resize(
      builder: () => Column(
        children: [
          Expanded(
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey.withOpacity(0.2), width: 2)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width / 4,
                        color: Colors.white,
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.search)),
                              hintText: "Search",
                              border: InputBorder.none),
                        ),
                      ),
                      const Gap(30),
                      Expanded(
                          child: Container(
                        alignment: Alignment.centerRight,
                        color: Colors.white,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications),
                        ),
                      ))
                    ],
                  ))),
          Expanded(
              flex: 12,
              child: Container(
                margin: const EdgeInsets.all(25),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      const Gap(10),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 30.rem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Expanded(
                                child: Container(
                              
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFFF3F3F3),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Row(
                                      children: [
                                        ActionChip(
                                            backgroundColor:
                                                const Color(0xFFF8C835),
                                            side: BorderSide.none,
                                            label: Text(
                                              "Crime Trend Analysis",
                                              style: ILEMSFonts.primary,
                                            ),
                                            onPressed: () {}),
                                        const Gap(5),
                                        ActionChip(
                                            elevation: 0,
                                            backgroundColor:
                                                const Color(0xFFF3F3F3),
                                            // backgroundColor: Color(0xFFF8C835),
                                            side: BorderSide.none,
                                            label: Text(
                                              "Crime Trend Analysis",
                                              style: ILEMSFonts.primary,
                                            ),
                                            onPressed: () {}),
                                      ],
                                    ),
                                  ),
                                  const Gap(10),
                                  const CrimeTrendsAnalysis()
                                ],
                              ),
                            )),
                            const Gap(10),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  // color: Colors.red,
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xFFF3F3F3),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Row(
                                          children: [
                                            ActionChip(
                                                backgroundColor:
                                                    const Color(0xFFF8C835),
                                                side: BorderSide.none,
                                                label: Text(
                                                  "Crime Trend Analysis",
                                                  style: ILEMSFonts.primary,
                                                ),
                                                onPressed: () {}),
                                            const Gap(5),
                                            ActionChip(
                                                elevation: 0,
                                                backgroundColor:
                                                    const Color(0xFFF3F3F3),
                                                // backgroundColor: Color(0xFFF8C835),
                                                side: BorderSide.none,
                                                label: Text(
                                                  "Crime Trend Analysis",
                                                  style: ILEMSFonts.primary,
                                                ),
                                                onPressed: () {}),
                                          ],
                                        ),
                                      ),
                                      const Gap(10),
                                      const CrimeFrequency()
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      const Gap(10),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 30.rem,
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              // color: Colors.red,
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFFF3F3F3),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Row(
                                      children: [
                                        ActionChip(
                                            backgroundColor:
                                                const Color(0xFFF8C835),
                                            side: BorderSide.none,
                                            label: Text(
                                              "Victim Counts By Age Group",
                                              style: ILEMSFonts.primary,
                                            ),
                                            onPressed: () {}),
                                        const Gap(5),
                                        ActionChip(
                                            elevation: 0,
                                            backgroundColor:
                                                const Color(0xFFF3F3F3),
                                            // backgroundColor: Color(0xFFF8C835),
                                            side: BorderSide.none,
                                            label: Text(
                                              "Temporal Analysis",
                                              style: ILEMSFonts.primary,
                                            ),
                                            onPressed: () {}),
                                      ],
                                    ),
                                  ),
                                  const Gap(10),
                                  const VictimCountsByAgeGroup()
                                ],
                              ),
                            )),
                            const Gap(10),
                            Expanded(
                                child: Container(
                              // color: Colors.red,
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFFF3F3F3),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Row(
                                      children: [
                                        ActionChip(
                                            backgroundColor:
                                                const Color(0xFFF8C835),
                                            side: BorderSide.none,
                                            label: Text(
                                              "FIR Processing",
                                              style: ILEMSFonts.primary,
                                            ),
                                            onPressed: () {}),
                                        const Gap(5),
                                        ActionChip(
                                            elevation: 0,
                                            backgroundColor:
                                                const Color(0xFFF3F3F3),
                                            // backgroundColor: Color(0xFFF8C835),
                                            side: BorderSide.none,
                                            label: Text(
                                              "IO Performance",
                                              style: ILEMSFonts.primary,
                                            ),
                                            onPressed: () {}),
                                      ],
                                    ),
                                  ),
                                  const Gap(10),
                                  const FIRProcessingChart()
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                      const Gap(10),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 30.rem,
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              //color: Colors.red,
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFFF3F3F3),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Row(
                                      children: [
                                        ActionChip(
                                            backgroundColor:
                                                const Color(0xFFF8C835),
                                            side: BorderSide.none,
                                            label: Text(
                                              "FIR Identification and Unit Analysis",
                                              style: ILEMSFonts.primary,
                                            ),
                                            onPressed: () {}),
                                        const Gap(5),
                                        ActionChip(
                                            elevation: 0,
                                            backgroundColor:
                                                const Color(0xFFF3F3F3),
                                            // backgroundColor: Color(0xFFF8C835),
                                            side: BorderSide.none,
                                            label: Text(
                                              "Act/Section Analysis",
                                              style: ILEMSFonts.primary,
                                            ),
                                            onPressed: () {}),
                                      ],
                                    ),
                                  ),
                                  const Gap(10),
                                  const VictimCountsByAgeGroup()
                                ],
                              ),
                            )),
                            const Gap(10),
                            Expanded(
                                child: Container(
                              // color: Colors.red,
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFFF3F3F3),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Row(
                                      children: [
                                        ActionChip(
                                            backgroundColor:
                                                const Color(0xFFF8C835),
                                            side: BorderSide.none,
                                            label: Text(
                                              "Complaint Mode Analysis",
                                              style: ILEMSFonts.primary,
                                            ),
                                            onPressed: () {}),
                                        const Gap(5),
                                        ActionChip(
                                            elevation: 0,
                                            backgroundColor:
                                                const Color(0xFFF3F3F3),
                                            // backgroundColor: Color(0xFFF8C835),
                                            side: BorderSide.none,
                                            label: Text(
                                              "Crime Trend Analysis",
                                              style: ILEMSFonts.primary,
                                            ),
                                            onPressed: () {}),
                                      ],
                                    ),
                                  ),
                                  const Gap(10),
                                  const ComplaintMode()
                                ],
                              ),
                            )),
                            const Gap(10),
                            Expanded(
                                child: Container(
                              // color: Colors.red,
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFFF3F3F3),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Row(
                                      children: [
                                        ActionChip(
                                            backgroundColor:
                                                const Color(0xFFF8C835),
                                            side: BorderSide.none,
                                            label: Text(
                                              "Complaint Mode Analysis",
                                              style: ILEMSFonts.primary,
                                            ),
                                            onPressed: () {}),
                                        const Gap(5),
                                        ActionChip(
                                            elevation: 0,
                                            backgroundColor:
                                                const Color(0xFFF3F3F3),
                                            // backgroundColor: Color(0xFFF8C835),
                                            side: BorderSide.none,
                                            label: Text(
                                              "Crime Trend Analysis",
                                              style: ILEMSFonts.primary,
                                            ),
                                            onPressed: () {}),
                                      ],
                                    ),
                                  ),
                                  const Gap(10),
                                  const CrimeFrequency()
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                      const Gap(10),
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFF3F3F3),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ActionChip(
                                backgroundColor: const Color(0xFFF8C835),
                                side: BorderSide.none,
                                onPressed: () {},
                                label: Text(
                                  "GeoSpatial Analysis",
                                  style: ILEMSFonts.primary,
                                )),
                            ActionChip(
                                backgroundColor: const Color(0xFFF3F3F3),
                                side: BorderSide.none,
                                onPressed: () {},
                                label: Text(
                                  "Village/Area-Wise Analysis",
                                  style: ILEMSFonts.primary,
                                ))
                          ],
                        ),
                      ),
                      const Gap(10),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 600,
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              color: Colors.white,
                              child: this.isReady?SfMaps(layers: [
                                MapShapeLayer(
                                  markerBuilder: (context, index) {
                                    return MapMarker(
                                      latitude: 12.9716,
                                      longitude: 77.5946,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Bangalore",
                                          style: ILEMSFonts.primary,
                                        ),
                                      ),
                                    );
                                  
                                  },
                                  source: MapShapeSource.asset(
                                    "assets/map/karnataka.json",
                                    shapeDataField: "district",
                                    dataCount: karnatakaData.length,
                                    primaryValueMapper: (int index) =>
                                        karnatakaData[index].district,
                                    dataLabelMapper: (int index) =>
                                        karnatakaData[index].district,
                                    shapeColorValueMapper: (int index) =>
                                        karnatakaData[index].color,
                                  ),
                                  // legend: const MapLegend(MapElement.shape),
                                  showDataLabels: true,
                                  shapeTooltipBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(7),
                                      child: Container(
                                        width: 8.rem,
                                        height: 4.rem,
                                        color: Colors.white,
                                        child: Column(
                                          children: [

                                            Text(
                                              karnatakaData[index].district,
                                            ),
                                            Text(karnatakaData[index].districtCode,style: ILEMSFonts.primary.copyWith(
                                              fontWeight: FontWeight.w900,
                                              color: karnatakaData[index].color,
                                              fontSize: 1.4.rem,
                                            ),)
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  tooltipSettings: const MapTooltipSettings(
                                      color: Colors.white,
                                      strokeColor: Colors.black,
                                      strokeWidth: 1),
                                  strokeColor: Colors.white,
                                  strokeWidth: 0.5,
                                  dataLabelSettings: MapDataLabelSettings(
                                    overflowMode: MapLabelOverflow.ellipsis,
                                      textStyle: ILEMSFonts.primary.copyWith(
                                        fontSize: 0.6.rem
                                      )),
                                ),
                              ]):CircularProgressIndicator(),
                            )),
                            
                            Expanded(
                                child: Container(
                              color: Colors.white,
                              child: this.isReady?SfMaps(layers: [
                                MapShapeLayer(
                                  source: MapShapeSource.asset(
                                    "assets/map/westbengal.json",
                                    shapeDataField: "district",
                                    dataCount: westBengalData.length,
                                    primaryValueMapper: (int index) =>
                                        westBengalData[index].district,
                                    dataLabelMapper: (int index) =>
                                        westBengalData[index].district,
                                    shapeColorValueMapper: (int index) =>
                                        westBengalData[index].color,
                                  ),
                                  // legend: MapLegend(
                                  //   MapElement.shape,
                                  //   position: MapLegendPosition.bottom,
                                  //   padding: EdgeInsets.all(10),
                                  //   enableToggleInteraction: true,
                                    
                                    
                                  // ),
                                  showDataLabels: true,
                                  shapeTooltipBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(7),
                                      child: Container(
                                        width: 8.rem,
                                        height: 4.rem,
                                        color: Colors.white,
                                        child: Column(
                                          children: [

                                            Text(
                                              westBengalData[index].district,
                                            ),
                                            Text(westBengalData[index].districtCode,style: ILEMSFonts.primary.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: westBengalData[index].color,
                                              fontSize: 1.4.rem
                                            ),)
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  tooltipSettings: const MapTooltipSettings(
                                      color: Colors.white,
                                      strokeColor: Colors.black,
                                      strokeWidth: 1),
                                  strokeColor: Colors.white,
                                  strokeWidth: 0.5,
                                  dataLabelSettings: MapDataLabelSettings(
                                    overflowMode: MapLabelOverflow.ellipsis,
                                      textStyle: ILEMSFonts.primary.copyWith(
                                        fontSize: 0.6.rem
                                      )),
                                ),
                              ]):CircularProgressIndicator(),
                            )),
                            
                            Expanded(
                                child: Container(
                              color: Colors.white,
                              child: this.isReady?SfMaps(layers: [
                                MapShapeLayer(
                                  source: MapShapeSource.asset(
                                    "assets/map/maharashtra.json",
                                    shapeDataField: "district",
                                    dataCount: MHData.length,
                                    primaryValueMapper: (int index) =>
                                        MHData[index].district,
                                    dataLabelMapper: (int index) =>
                                        MHData[index].district,
                                    shapeColorValueMapper: (int index) =>
                                        MHData[index].color,
                                  ),
                                  // legend: const MapLegend(MapElement.shape),
                                  showDataLabels: true,
                                  shapeTooltipBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(7),
                                      child: Container(
                                        width: 8.rem,
                                        height: 4.rem,
                                        color: Colors.white,
                                        child: Column(
                                          children: [

                                            Text(
                                              MHData[index].district,
                                            ),
                                            Text(MHData[index].districtCode,style: ILEMSFonts.primary.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: MHData[index].color,
                                              fontSize: 1.4.rem
                                            ),)
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  tooltipSettings: const MapTooltipSettings(
                                      color: Colors.white,
                                      strokeColor: Colors.black,
                                      strokeWidth: 1),
                                  strokeColor: Colors.white,
                                  strokeWidth: 0.5,
                                  dataLabelSettings: MapDataLabelSettings(
                                    overflowMode: MapLabelOverflow.ellipsis,
                                      textStyle: ILEMSFonts.primary.copyWith(
                                        fontSize: 0.6.rem
                                      )),
                                ),
                              ]):CircularProgressIndicator(),
                            )),
                            
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class Model {
  Model(this.district, this.color, this.districtCode);

  String district;
  Color color;
  String districtCode;
}
