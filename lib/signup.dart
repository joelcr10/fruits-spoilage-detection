

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login.dart';
import 'package:fruits/Controller/signup_controller.dart';


class SignUpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white, //change colour of background
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              //-------------welcome page image------------
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 350.0,
                    height: 200.0,

                    child: Image.asset(
                      'assets/images/grocery2.png',
                      // fit: BoxFit.contain,
                      width: 20.0,
                      // height: 500,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20.0,
              ),
              //--------------welcome back------------------
              Container(
                child: const Text(
                  'Get on Board,',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),

              //-----------------username input field-----------
              SizedBox(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    prefixIcon: const Icon(Icons.person, color: Colors.black,),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.green),

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              //-----------------username input field-----------
              SizedBox(
                child: TextField(
                  controller: controller.email,
                  keyboardType: TextInputType.emailAddress,

                  decoration: InputDecoration(
                    hintText: "E-Mail",
                    prefixIcon: const Icon(Icons.mail, color: Colors.black,),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.green),

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              //-----------------username input field-----------
              SizedBox(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Phone No",
                    prefixIcon: const Icon(Icons.phone, color: Colors.black,),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.green),

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              //------------Password input field----------------
              SizedBox(
                child: TextField(
                  controller: controller.password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "6 Digit Password",
                    prefixIcon: const Icon(Icons.lock, color: Colors.black,),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.green),

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              //------------Login button--------------------
              SizedBox(
                height: 50.0,
                child: ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      print('clicked sign up button');
                      SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              // const Center(
              //   child: Text(
              //     "Don't have an account? Sign Up",
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       fontSize: 18.0,
              //
              //     ),
              //   ),
              // ),

              Center(
                child: new RichText(
                  text: new TextSpan(
                      children: [
                        new TextSpan(
                            text: "Already have an account? ",
                            style:  new TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            )
                        ),
                        new TextSpan(
                          text: "Login",
                          style:  new TextStyle(
                            color: Colors.blue,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                          recognizer: new TapGestureRecognizer()..onTap=() {
                            print('pressed sign up button in dont have an account');
                            Get.to(()=>LoginPage());

                          },
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}