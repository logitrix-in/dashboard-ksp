import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

import '../../colors/colors.dart';

import '../../components/containers/checkbox.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Resize(
      builder:() =>  Scaffold(
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
                      children: [
                        //logo
                        Image.asset("LOGO.png"),
      
                        //Login
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
      
                        //welcome back
      
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome back!",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
      
                        //email Address Box
                        const TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Email Address',
                              prefixIcon: Visibility(
                                  visible: true,
                                  child: Icon(Icons.email_outlined,
                                      color: Colors.grey))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //password
                        const TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Password',
                              prefixIcon: Visibility(
                                visible: true,
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                ),
                              ),
                              suffixIcon: Visibility(
                                visible: true,
                                child: Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                ),
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CheckboxExample(),
                            Text(
                              "I agree to the Terms and Conditions and Privacy Policy",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
      
                        //login
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                            backgroundColor: Colors.amber,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 180, vertical: 20),
                          ),
                          onPressed: () {},
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
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
