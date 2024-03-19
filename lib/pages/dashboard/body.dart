import 'package:dashboard_ksp/pages/dashboard/sections/hero.dart';
import 'package:dashboard_ksp/pages/dashboard/sections/noOfIncidents.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              color: Colors.white,
              child: Column(
                children: [
                  DashboardHero(),
                  NoIncidents()
                ],
              ),
            ))
      ],
    );
  }
}
