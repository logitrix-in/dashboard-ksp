import 'package:dio/dio.dart';

final options = BaseOptions(
  baseUrl: "https://dev.api.ilems.logitrix.in",
  
);

final dio = Dio(
  options
);