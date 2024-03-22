import 'package:dashboard_ksp/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:resize/resize.dart';

class VictimeAndAccusedCounts extends StatelessWidget {
  const VictimeAndAccusedCounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Resize(
      builder: () =>  Container(
        height: 340,
        // height: MediaQuery.of(context).size.height,
        
        width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 2
            )
          )
        
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration:  BoxDecoration(
                color: Color(0xFFE5E5E5).withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      
              child:  Column(
                children: [
                  Text("Total Count of Victims and Accused Individuals",style: ILEMSFonts.primary,),
                  Divider(
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  Text("Ratio of Victims to Accused for Dif. Crime",style: ILEMSFonts.primary.copyWith(
                    color: Color(0xFFA3A3A3)
                  ),)
                ],
              ),
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Victims",style: ILEMSFonts.primary.copyWith(
                  color: Color(0xFF2A4D15),
                  fontWeight: FontWeight.bold,
                                    fontSize: 1.4.rem
      
                ),),
                Text("45",style: ILEMSFonts.primary.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 1.4.rem
                ),)
              ],
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Accused",style: ILEMSFonts.primary.copyWith(
                  color: Color(0xFFB27C13),
                  fontWeight: FontWeight.bold,
                                    fontSize: 1.4.rem
      
                ),),
                Text("34",style: ILEMSFonts.primary.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 1.4.rem
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}