import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'package:fruits/Controller/signup_controller.dart';
import 'home.dart';



class SignUpScreen extends StatefulWidget{
  const SignUpScreen({Key? key}) : super(key:key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>{


  @override
  Widget build(BuildContext context){

    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My App Title",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Sign Up to your app",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 44.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              TextField(
                controller: controller.email,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(

                  hintText: "User email",
                  prefixIcon: Icon(Icons.mail, color: Colors.black,),
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              TextField(
                controller: controller.password,
                obscureText: true,
                // keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "User password",
                  prefixIcon: Icon(Icons.lock, color: Colors.black,),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Don't remember your Password?",
                style: TextStyle(color: Colors.blue),
              ),
              const SizedBox(
                height: 44,
              ),

              Container(
                width: double.infinity,
                child: RawMaterialButton(
                  fillColor: Colors.blue,
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      print('clicked sign up button');
                      SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                    }
                  },
                  elevation: 0.0,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
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



