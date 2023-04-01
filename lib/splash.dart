import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'home.dart';

// class Splash extends StatefulWidget{
//   const Splash({Key? key}): super(key:key);
//   @override
//   _SplashState createState() => _SplashState();
// }
// class _SplashState extends State<Splash>{
//
//   @override
//   void initState(){
//     super.initState();
//     _navigateHome();
//   }
//
//   _navigateHome() async{
//       await Future.delayed(Duration(milliseconds: 1500),(){});
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: 'Home')));
//   }
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Center(
//         child: Container(
//           child: Text(
//             'Splash Screen',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
//           ),
//         ),
//       ),
//     );
//   }
// }


class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Freshness Detection',
        home: AnimatedSplashScreen(
            duration: 3000,
            // splash: Icons.shopping_basket,
            splash: Icons.shopping_basket_rounded,
            nextScreen: MyHomePage(title: 'home'),
            splashTransition: SplashTransition.fadeTransition,
            // pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.green));
  }
}