import 'package:dashboard_ksp/constants/fonts.dart';
import 'package:dashboard_ksp/routes/endpoints.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:resize/resize.dart';

import 'package:dashboard_ksp/colors/colors.dart';

import 'package:dashboard_ksp/components/containers/checkbox.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Resize(
      builder: () => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: RichaColors.primary,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //logo
                        Image.asset("LOGO.png"),

                        //Login
                        Text("Login",
                            style: ILEMSFonts.primary.copyWith(
                              fontSize: 1.2.rem,
                              fontWeight: FontWeight.w100,
                            )),

                        //welcome back

                        Text("Welcome back!",
                            style: ILEMSFonts.primary.copyWith(
                              fontSize: 1.5.rem,
                              fontWeight: FontWeight.w100,
                            )),
                        const Gap(10),

                        //email Address Box
                        TextField(
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: 'Email Address',
                              prefixIcon: Container(
                                  padding: const EdgeInsets.all(8),
                                  // color: Colors.red,
                                  child: const Iconify(
                                    Ic.sharp_alternate_email,
                                    color: Colors.grey,
                                    
                                  )),),
                        ),
                        const Gap(10),

                        //password
                         TextField(
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: 'Password',
                              prefixIcon: Container(
                                  padding: const EdgeInsets.all(8),

                                child: const Iconify(
                                      Ic.round_password,
                                      color: Colors.grey,
                                      
                                    ),
                              ),
                              suffixIcon: const Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              )),
                        ),
                        //remember me/ forgot password
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CheckboxExample(),
                                Text(
                                  "Remember Me",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        //i agree terms checkox
                         Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CheckboxExample(),
                            Container(
                              // color: Colors.red,
                              
                              child: Text(
                                "I agree to the Terms and Conditions and Privacy Policy",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),

                        //login
                        Gap(10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                            backgroundColor: Colors.amber,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 20)
                            
                          ),
                          onPressed: () {
                            Get.toNamed(Endpoints.home);
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        //signup
                        const SizedBox(
                          height: 20,
                        ),
                        // const Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Text(
                        //       "Don't have an account?",
                        //       style: TextStyle(
                        //         color: Colors.grey,
                        //       ),
                        //     ),
                        //     Text(
                        //       "Sign up",
                        //       style: TextStyle(
                        //         color: Colors.red,
                        //       ),
                        //     )
                        //   ],
                        // ),

                        Center(
                          child: Text.rich(TextSpan(
                            text: "Don't Have an Account?",
                            children: [
                              TextSpan(
                                text: "Sign Up",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              )
                            ],
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
