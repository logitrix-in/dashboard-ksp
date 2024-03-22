import 'package:get/get.dart';
import 'package:dio/dio.dart' as dioResponse;
import 'package:syncfusion_flutter_charts/charts.dart';
class MonthlyData {
  MonthlyData(this.x, this.y);

  final String x;
  final double y;
}



class CrimeFrequencyController extends GetxController {
  
  RxList<CartesianSeries<MonthlyData, String>> monthlyDataSeries = <CartesianSeries<MonthlyData, String>>[].obs;
  RxBool isReady = false.obs;
  RxInt currentYear = 2023.obs;
  Future<void> getMonthWiseAnalytics() async {
    dioResponse.Response response = await dioResponse.Dio()
        .get("https://dev.api.ilems.logitrix.in/analytics/month-wise/?year=${currentYear}");
    if (response.statusCode == 200) {
      Map<String, Map<String, int>> result = {};
      Map<String, dynamic> data = response.data['month_wise_analytics'];
      // Process the data

      // Identify all unique actions and months
      Set<String> allActions = {};
      Set<String> allMonths = data.keys.toSet();
      result.clear();
      allActions.clear();
      monthlyDataSeries.clear();
      
      data.forEach((month, actions) {
        allActions.addAll(actions.keys);
      });

      // Initialize all actions with 0 for all months
      for (var action in allActions) {
        result[action] = {for (var month in allMonths) month: 0};
      }

      // Populate the data
      data.forEach((month, actions) {
        actions.forEach((action, count) {
          result[action]![month] = count;
        });
      });


      result.forEach((key, value) { 
        List<MonthlyData> data = [];
        value.forEach((month, count) {
          data.add(MonthlyData(month, count.toDouble()));
        });
        monthlyDataSeries.add(
          ColumnSeries<MonthlyData, String>(
            width: 1,
            dataSource: data,
            xValueMapper: (MonthlyData sales, _) => sales.x,
            yValueMapper: (MonthlyData sales, _) => sales.y,
            name: key,
          ),
        );
       });
      isReady.value = true;
      // print(result);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getMonthWiseAnalytics();
  }
}
