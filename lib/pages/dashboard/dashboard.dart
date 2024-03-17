import 'package:dashboard_ksp/pages/dashboard/body.dart';
import 'package:dashboard_ksp/pages/dashboard/components/navItem.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Color(0xFF1B1919),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: const NavItem(),
          )),
          Expanded(
              flex: 5,
              child: Container(
                color: const Color(0xFFFEFCF6),
                child: DashboardBody(),
              ))
        ],
      ),
    );
  }
}
