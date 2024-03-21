import 'package:dashboard_ksp/colors/colors.dart';
import 'package:dashboard_ksp/constants/fonts.dart';
import 'package:dashboard_ksp/pages/dashboard/controllers/navItemController.dart';
import 'package:dashboard_ksp/routes/endpoints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:resize/resize.dart';

class NavItem extends StatelessWidget {
  const NavItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: NavItemController(),
      builder: (controller) => Resize(
        builder: () => Obx(() => Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        onTap: () {
                          controller.updateIndex(0);
                          Get.toNamed(Endpoints.home);

                        },
                        leading: Icon(
                          Icons.dashboard,
                          color: controller.selectedIndex.value == 0
                              ? RichaColors.primary2
                              : RichaColors.secondary,
                        ),
                        title: Text(
                          "Dashboard",
                          style: ILEMSFonts.primary.copyWith(
                              color: controller.selectedIndex.value == 0
                                  ? RichaColors.primary2
                                  : RichaColors.secondary,
                              fontSize: 1.2.rem),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          controller.updateIndex(1);
                          Get.toNamed(Endpoints.analytics);
                        },
                        leading: Icon(
                          Icons.analytics_outlined,
                          color: controller.selectedIndex.value == 1
                              ? RichaColors.primary2
                              : RichaColors.secondary,
                        ),
                        title: Text(
                          "Analytics",
                          style: ILEMSFonts.primary.copyWith(
                              color: controller.selectedIndex.value == 1
                                  ? RichaColors.primary2
                                  : RichaColors.secondary,
                              fontSize: 1.2.rem),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          controller.updateIndex(2);
                        },
                        leading: Iconify(
                          Mdi.police_station,
                          color: controller.selectedIndex.value == 2
                              ? RichaColors.primary2
                              : RichaColors.secondary,
                        ),
                        title: Text(
                          "Police Station",
                          style: ILEMSFonts.primary.copyWith(
                              color: controller.selectedIndex.value == 2
                                  ? RichaColors.primary2
                                  : RichaColors.secondary,
                              fontSize: 1.2.rem),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          controller.updateIndex(3);
                        },
                        leading: Iconify(
                          Mdi.police_station,
                          color: controller.selectedIndex.value == 3
                              ? RichaColors.primary2
                              : RichaColors.secondary,
                        ),
                        title: Text(
                          "Crime Type",
                          style: ILEMSFonts.primary.copyWith(
                              color: controller.selectedIndex.value == 3
                                  ? RichaColors.primary2
                                  : RichaColors.secondary,
                              fontSize: 1.2.rem),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          controller.updateIndex(4);
                        },
                        leading: Iconify(
                          Mdi.settings_outline,
                          color: controller.selectedIndex.value == 4
                              ? RichaColors.primary2
                              : RichaColors.secondary,
                        ),
                        title: Text(
                          "Settings",
                          style: ILEMSFonts.primary.copyWith(
                              color: controller.selectedIndex.value == 4
                                  ? RichaColors.primary2
                                  : RichaColors.secondary,
                              fontSize: 1.2.rem),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
