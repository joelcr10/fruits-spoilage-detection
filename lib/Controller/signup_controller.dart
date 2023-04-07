import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fruits/authentication_repository.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();


  void registerUser(String email, String password){
      print('inside signup controller $password');
      print('email: $email');
      AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
}