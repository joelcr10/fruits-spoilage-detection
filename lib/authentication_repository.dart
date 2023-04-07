import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruits/home.dart';
import 'package:fruits/signup_email_password_failure.dart';
import 'package:fruits/welcome.dart';
import 'package:get/get.dart';
import 'splash.dart';
import 'signup.dart';
import 'login.dart';

String? currentUser='anonymous';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser; //to keep the user logged in

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => WelcomeScreen()) : Get.offAll(() => const MyHomePage());
  }

  Future<void> createUserWithEmailAndPassword(String email,String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);

      //if user is logged in redirect to home page or welcome page
      print('FIREBASE USER VALUE = ${firebaseUser.value}');
      // firebaseUser.value != null ? Get.offAll(() => MyHomePage(title: 'home')) : Get.to(()=>SignUpScreen());
      firebaseUser.value != null ? Get.offAll(() => MyHomePage()) : Get.to(()=>WelcomeScreen());


    } on FirebaseAuthException catch (e) {
        final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
        print('Firebase auth exception - ${ex.message}');
        throw ex;
    }
    catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print('exception - ${ex.message}');
      throw ex;
    }
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async{
    print('inside sign in function $email $password');
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      print('sign in info: ${userCredential.user?.email}');

      currentUser = userCredential.user?.email;

      //TODO if user already logged in redirect to home page else redirect to welcome page
      Get.to(()=>MyHomePage(),arguments: [currentUser]);

    } on FirebaseAuthException catch(e){
      if (e.code == 'user-not-found'){
        print('No user found for that emaill');
      }
      else if(e.code == 'wrong-password'){
        print('wrong password');
      }
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {

    }
    catch (_) {}
  }

  Future<void> logout() async => await _auth.signOut();

}