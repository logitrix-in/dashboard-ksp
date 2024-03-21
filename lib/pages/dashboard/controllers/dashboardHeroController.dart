import 'package:dashboard_ksp/pages/dashboard/models/crime_reported_model.dart';
import 'package:dashboard_ksp/pages/dashboard/models/crime_trends_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dioResponse;

class DashboardHeroController extends GetxController{

  RxList<CrimeReportedModel> crimeReported = <CrimeReportedModel>[].obs;
  RxList<CrimeTrendsModel> crimeTrends = <CrimeTrendsModel>[].obs;

  Future<void> fetch_crime_reported() async{
    dioResponse.Response response = await dioResponse.Dio().get("https://dev.api.ilems.logitrix.in/analytics/");
    print(response.statusCode);
    if (response.statusCode == 200) {
      Map<dynamic,dynamic> firData = response.data['fir'];
      List<dynamic> crime_yearly_trends = response.data['trends']['fir']['yearly_trends'];
      // print(response.data);
      crimeReported.value = [
        CrimeReportedModel('Total', firData['total']!.toDouble(), const Color(0xff34D196)),
        CrimeReportedModel('Last 7 Days', firData['last_7_days']!.toDouble(), const Color(0xff6610F2)),
        CrimeReportedModel('Last Month', firData['last_month']!.toDouble(), const Color(0xffFF715B)),
        CrimeReportedModel('Last Year', firData['last_year']!.toDouble(), const Color(0xffFFA15B)),
      ];

      for (var i = 0; i < crime_yearly_trends.length; i++) {
        crimeTrends.add(CrimeTrendsModel.fromJson(crime_yearly_trends[i]));
      }
    }
  }

  Future<void> fetchDashboardHeroData() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  void onInit() {
    super.onInit();
    fetch_crime_reported();
  }
}