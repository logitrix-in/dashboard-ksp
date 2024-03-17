import 'package:dashboard_ksp/pages/dashboard/dashboard.dart';
import 'package:dashboard_ksp/pages/login/login.dart';
import 'package:dashboard_ksp/routes/endpoints.dart';
import 'package:get/get.dart';

var routes = [
  GetPage(name: Endpoints.login, page: () => Login(),),
  GetPage(name: Endpoints.home, page: () => Dashboard(),),
];