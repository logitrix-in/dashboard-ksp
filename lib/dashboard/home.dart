import 'dart:html';

import 'package:flutter/material.dart';

import '../colors/colors.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: RichaColors.primary,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 650,
              width: 503,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                Image.asset("LOGO.png"),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("Login",style: TextStyle(
                      color: Colors.amber,
                      fontSize: 25,
                    ),),
                  ],
                ),
                ],
              ),
            ),
          ]
          ,
        ),
      ),
      
    );
  }
}
