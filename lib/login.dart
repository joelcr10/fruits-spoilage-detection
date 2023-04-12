

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits/authentication_repository.dart';
import 'package:get/get.dart';
import 'signup.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}


//TODO: perform fom validation in login form
//TODO: add error message for incorrrect password or username

class LoginPageState extends State<LoginPage>{

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // final controller = Get.put(SignInController());
  // final _formKey = GlobalKey<FormState>();

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white, //change colour of background
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            //-------------welcome page image------------
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250.0,
                  // height: 200.0,

                  child: Image.asset(
                    'assets/images/Diet-cuate.png',
                    // fit: BoxFit.contain,
                    width: 20.0,
                    // height: 500,
                  ),
                ),
              ],
            ),

            //--------------welcome back------------------
            Container(
              child: Text(
                'Welcome Back,',
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
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Username or E-mail",
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

            //------------Password input field----------------
            SizedBox(
              child: TextField(
                controller: passwordController,
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

            const SizedBox(height: 10.0),

            //-----------Forgot Password --------------------
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ],
            ),

            const SizedBox(
              height: 10.0,
            ),

            //------------Login button--------------------
            SizedBox(
              height: 50.0,
              child: ElevatedButton(
                onPressed: (){
                  AuthenticationRepository.instance.signInWithEmailAndPassword(emailController.text.trim(), passwordController.text.trim());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  'LOGIN',
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
                        text: "Don't have an account? ",
                        style:  new TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        )
                      ),
                      new TextSpan(
                          text: "Sign Up",
                          style:  new TextStyle(
                            color: Colors.blue,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        recognizer: new TapGestureRecognizer()..onTap=() {
                            print('pressed sign up button in dont have an account');
                           Get.to(()=>SignUpScreen());

                        },
                      ),
                    ]
                  ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}