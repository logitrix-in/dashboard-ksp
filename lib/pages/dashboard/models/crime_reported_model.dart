import 'package:flutter/material.dart';

class CrimeReportedModel {
  CrimeReportedModel(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}

class FIRAnalyticsModel {
  int? total;
  int? last7Days;
  int? lastMonth;
  int? lastYear;

  FIRAnalyticsModel(
      {this.total, this.last7Days, this.lastMonth, this.lastYear});

  FIRAnalyticsModel.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    last7Days = json['last_7_days'];
    lastMonth = json['last_month'];
    lastYear = json['last_year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['last_7_days'] = this.last7Days;
    data['last_month'] = this.lastMonth;
    data['last_year'] = this.lastYear;
    return data;
  }
}
