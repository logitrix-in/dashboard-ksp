import 'package:dashboard_ksp/pages/dashboard/controllers/crimeFrequencyController.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CrimeFrequency extends StatefulWidget {
  const CrimeFrequency({super.key});

  @override
  State<CrimeFrequency> createState() => _CrimeFrequencyState();
}

class _CrimeFrequencyState extends State<CrimeFrequency> {
  TextEditingController _controller = TextEditingController();

    Future<void> _selectYear(BuildContext context) async {
      
    }
  @override
  Widget build(BuildContext context) {
    

    return GetBuilder(
      init: CrimeFrequencyController(),
      builder: (controller) => Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
                color: const Color(0xFFE5E5E5),
                style: BorderStyle.solid,
                width: 1.2)),
        child: Obx(() => controller.isReady.value
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFormField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: 'Year',
                      border: OutlineInputBorder(),
                    ),
                    readOnly: true,
                    onTap: () async{
                     final DateTime? picked = await showDatePicker(
        initialEntryMode: DatePickerEntryMode.calendarOnly,

        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2101),
        initialDatePickerMode: DatePickerMode.year,
        // This will force the calendar to display in year-only mode
        helpText: 'SELECT A YEAR', // Can be customized as per the need
      );
      if (picked != null)
        
        setState(() {
          _controller.text = DateFormat('yyyy').format(picked);
          controller.currentYear.value=int.parse(_controller.text);
                      controller.isReady.value=false;
                      controller.getMonthWiseAnalytics();
          
        });
                      
                      
                    },
                  ),
                  Gap(10),
                  SfCartesianChart(
                      enableAxisAnimation: true,
                      zoomPanBehavior: ZoomPanBehavior(
                          enablePinching: true,
                          enablePanning: true,
                          enableMouseWheelZooming: true,
                          enableDoubleTapZooming: true),
                      legend: const Legend(
                        isVisible: true,
                        position: LegendPosition.bottom,
                        isResponsive: true,
                        alignment: ChartAlignment.center,
                        overflowMode: LegendItemOverflowMode.wrap,
                      ),
                      primaryXAxis: const CategoryAxis(),
                      primaryYAxis: const NumericAxis(minimum: 0),
                      tooltipBehavior: TooltipBehavior(enable: true),
                      series: controller.monthlyDataSeries),
                ],
              )
            : const CircularProgressIndicator()),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
