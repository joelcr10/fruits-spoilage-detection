  import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'home.dart';
import 'login.dart';
import 'signup.dart';



class Splash extends StatelessWidget {

  Future<FirebaseApp> _initializeFirebase() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Freshness Detection',
        home: AnimatedSplashScreen(
            duration: 3000,

            // splash: Icons.shopping_basket,
            splash: Image.asset(
              'assets/images/Diet-amico.png',
              width: 400,
              height: 900,
              fit: BoxFit.fitHeight,
            ),
            // nextScreen: MyHomePage(title: 'home'),
            nextScreen: FutureBuilder(
                future: _initializeFirebase(),
                builder: (context, snapshot){
                  if(snapshot.connectionState == ConnectionState.done){
                    // return MyHomePage(title: 'home');
                    return Scaffold(
                        body: SignUpScreen()
                    );
                  }

                  return const Center(child: CircularProgressIndicator(),);
                },
            ),
            splashTransition: SplashTransition.fadeTransition,
            // pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.green));
  }
}