import 'package:dashboard_ksp/colors/colors.dart';
import 'package:dashboard_ksp/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:resize/resize.dart';

class AnalyticsBody extends StatelessWidget {
  const AnalyticsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Resize(
      builder: () =>  Column(
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
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width / 4,
                        color: Colors.white,
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.search)),
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
                          icon: Icon(Icons.notifications),
                        ),
                      ))
                    ],
                  ))),
          Expanded(
            flex: 12,
            child: Container(
                            margin: const EdgeInsets.all(25),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                ],
              ),
            )) 
        ],
      ),
    );
  }
}