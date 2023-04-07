import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';
import 'signup.dart';

class WelcomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 400.0,

                child: Image.asset(
                  'assets/images/Diet-amico.png',
                  // fit: BoxFit.contain,
                  width: 20.0,
                  // height: 500,
                ),
              ),
              const SizedBox(height: 20.0,),
              const Text(
                  'E-Rot Detection',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5.0,),
              SizedBox(
                width: 300.0,
                  child: Text(
                      'Automate fruits freshness and rot detection',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
              ),
              const SizedBox(height: 40.0,),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                          Get.to(() => LoginPage());
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(),
                          foregroundColor: Colors.black,
                          side: BorderSide(color: Colors.black, width: 3),
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                        ),
                        child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                            ),
                        ),
                    ),
                  ),

                  const SizedBox(
                      width: 10.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => SignUpScreen());
                        },
                        style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                        side: BorderSide(color: Colors.black, width: 3),
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                      ),
                        child: Text(
                            'SIGN UP',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                          ),

                        ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}