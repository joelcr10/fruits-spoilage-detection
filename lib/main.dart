import 'package:flutter/material.dart';
import 'package:fruits/fresh.dart';
import 'package:fruits/rotting.dart';
import 'package:fruits/spoiled.dart';
import 'All.dart';
import 'home.dart';
import 'splash.dart';



import 'package:camera/camera.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eFresh',
      home: Splash(),
    );
  }
}
