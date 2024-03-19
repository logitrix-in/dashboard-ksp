import 'package:dashboard_ksp/pages/analytics/analytics.dart';
import 'package:dashboard_ksp/pages/dashboard/dashboard.dart';
import 'package:dashboard_ksp/pages/login/login.dart';
import 'package:dashboard_ksp/routes/endpoints.dart';
import 'package:get/get.dart';

var routes = [
  GetPage(name: Endpoints.login, page: () => Login(),transition: Transition.cupertino),
  GetPage(name: Endpoints.home, page: () => Dashboard(),transition: Transition.cupertino),
  GetPage(name: Endpoints.analytics, page: () => AnalyticsPage(),transition: Transition.cupertino),

];