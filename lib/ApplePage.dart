import 'dart:core';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:fruits/drawerWidget.dart';
import 'globalVariables.dart' as global;
import 'test.dart';
import 'package:get/get.dart';


String ethylene = 'NaN';
String moisture = 'NaN';
String methane = 'NaN';
String carboMonoxide = 'NaN';

final userDoc = FirebaseFirestore.instance.collection("Users");

final goodConditionColor = 0xffFFFFFF;
final badConditionColor = 0xffFF9699;

var ethyleneColor = goodConditionColor;
var methaneColor = goodConditionColor;
var moistureColor = goodConditionColor;
var carbonMonoColor = goodConditionColor;

class ApplePage extends StatefulWidget {
  const ApplePage({super.key});
  // final String title;

  void initState(){
      
  }

  @override
  State<ApplePage> createState() => ApplePageState();
}

class ApplePageState extends State<ApplePage>{
    
  void getSensorInfo(){
    print('inside get sensor info');
    FirebaseFirestore.instance.collection("Users").doc('EWJrHpGXFvb2Zi09W3HJId3ssFu2').get().then((DocumentSnapshot doc){
      // ethylene = doc["Ethylene"];
      print('sensor info: ${doc["Fruits"]}');
    });
  }

  void checkDB() async{

    FirebaseFirestore.instance.collection('User').doc(global.currentUser).collection('Fruits').doc('Apple').get().then((doc){
      ethylene = doc["Ethylene"];
      double.parse(ethylene) < 20.59 ? ethyleneColor = goodConditionColor : ethyleneColor = badConditionColor;

      methane = doc["Methane"];
      double.parse(methane)<12.50? methaneColor = goodConditionColor : methaneColor = badConditionColor;

      carbonMono = doc["Carbon Mono"];
      double.parse(carbonMono)<07.51? carbonMonoColor = goodConditionColor : carbonMonoColor = badConditionColor;

      moisture = doc["Moisture"];
      double.parse(moisture)<35.87? moistureColor = goodConditionColor : moistureColor = badConditionColor;
      setState(() {
      });
    });



    // print('name: $name');
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xffe9ecea),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
            backgroundColor: Colors.green,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  // bottomLeft: Radius.circular(40)
              ),
            ),
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(bottomRight: Radius.circular(40)),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/apples.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black87],
                    ),

                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'APPLES / TRAY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Location of apple',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("Users").doc('EWJrHpGXFvb2Zi09W3HJId3ssFu2').collection('Fruits').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
          if(snapshot.connectionState == ConnectionState.none){
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.green,
              ),
            );
          }
          else {
            String eth = '';

            checkDB();
            return Column(
              children: [
                const SizedBox(height: 20.0,),
                Center(
                  child:  GestureDetector(
                    onTap: (){
                      // getSensorInfo();
                    },
                    child: Text(
                      'STATE OF APPLE',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                const SizedBox(height: 20.0,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration:  BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 20.0,
                            spreadRadius: -4.0,
                          ),
                        ],
                      ),
                      child: Card(
                        color: Color(ethyleneColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: SizedBox(
                          width: 170.0,
                          height: 170.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 10.0),

                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Text(
                                    'Ethylene',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),

                                  const SizedBox(height: 2.0,),
                                  Text(
                                    '${ethylene}%',
                                    style: TextStyle(
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(height: 10.0,),

                                  SizedBox(
                                    child: Image.asset('assets/images/ethylene.png'),
                                    height: 35.0,
                                    width: 35.0,
                                  ),

                                  const SizedBox(height: 8.0,),
                                  RichText(
                                    text: const TextSpan(
                                      children:[
                                        TextSpan(
                                            text: "Condition : ",
                                            style:  TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w300,
                                            )
                                        ),
                                        TextSpan(
                                          text: "Good",
                                          style:  TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 2.0,),
                                  RichText(
                                    text: const TextSpan(
                                      children:[
                                        TextSpan(
                                            text: "Threshold : ",
                                            style:  TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w300,
                                            )
                                        ),
                                        TextSpan(
                                          text: "20.59%",
                                          style:  TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),

                                ]
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 20.0,),

                    Container(
                      decoration:  BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 20.0,
                            spreadRadius: -4.0,
                          ),
                        ],
                      ),
                      child: Card(
                        color: Color(moistureColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: SizedBox(
                          width: 170.0,
                          height: 170.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 10.0),

                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  const Text(
                                    'Moisture',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),

                                  const SizedBox(height: 2.0,),
                                  Text(
                                    "${moisture}%",
                                    style: TextStyle(
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(height: 10.0,),

                                  SizedBox(
                                    child: Image.asset('assets/images/moisture.png'),
                                    height: 35.0,
                                    width: 35.0,
                                  ),

                                  const SizedBox(height: 8.0,),
                                  RichText(
                                    text: const TextSpan(
                                      children:[
                                        TextSpan(
                                            text: "Condition : ",
                                            style:  TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w300,
                                            )
                                        ),
                                        TextSpan(
                                          text: "Good",
                                          style:  TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 2.0,),
                                  RichText(
                                    text: const TextSpan(
                                      children:[
                                        TextSpan(
                                            text: "Threshold : ",
                                            style:  TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w300,
                                            )
                                        ),
                                        TextSpan(
                                          text: "35.87%",
                                          style:  TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),

                                ]
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

                const SizedBox(height: 30.0,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration:  BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 20.0,
                            spreadRadius: -4.0,
                          ),
                        ],
                      ),
                      child: Card(
                        color: Color(carbonMonoColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: SizedBox(
                          width: 170.0,
                          height: 170.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 10.0),

                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  const Text(
                                    'Carbon Mono',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),

                                  const SizedBox(height: 2.0,),
                                  Text(
                                    "${carbonMono}%",
                                    style: TextStyle(
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(height: 10.0,),

                                  SizedBox(
                                    child: Image.asset('assets/images/co.png'),
                                    height: 35.0,
                                    width: 35.0,
                                  ),

                                  const SizedBox(height: 8.0,),
                                  RichText(
                                    text: const TextSpan(
                                      children:[
                                        TextSpan(
                                            text: "Condition : ",
                                            style:  TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w300,
                                            )
                                        ),
                                        TextSpan(
                                          text: "Good",
                                          style:  TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 2.0,),
                                  RichText(
                                    text: const TextSpan(
                                      children:[
                                        TextSpan(
                                            text: "Threshold : ",
                                            style:  TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w300,
                                            )
                                        ),
                                        TextSpan(
                                          text: "07.51%",
                                          style:  TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),

                                ]
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 20.0,),

                    Container(

                      decoration:  BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 20.0,
                            spreadRadius: -4.0,
                          ),
                        ],
                      ),
                      child: Card(
                        color: Color(methaneColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: SizedBox(
                          width: 170.0,
                          height: 170.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 10.0),

                            child:  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  const Text(
                                    'Methane',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),

                                  const SizedBox(height: 2.0,),
                                  Text(
                                    "${methane}%",
                                    style: TextStyle(
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(height: 10.0,),

                                  SizedBox(
                                    child: Image.asset('assets/images/smoke.png'),
                                    height: 35.0,
                                    width: 35.0,
                                  ),

                                  const SizedBox(height: 8.0,),
                                  RichText(
                                    text: const TextSpan(
                                      children:[
                                        TextSpan(
                                            text: "Condition : ",
                                            style:  TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w300,
                                            )
                                        ),
                                        TextSpan(
                                          text: "Bad",
                                          style:  TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 2.0,),
                                  RichText(
                                    text: const TextSpan(
                                      children:[
                                        TextSpan(
                                            text: "Threshold : ",
                                            style:  TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w300,
                                            )
                                        ),
                                        TextSpan(
                                          text: "12.50%",
                                          style:  TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),

                                ]
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

                const SizedBox(height: 20.0,),
                SizedBox(
                  height: 50.0,
                  width: 200.0,
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // background (button) color
                      foregroundColor: Colors.white,
                      // foreground (text) color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: const Text(
                      'REFRESH',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: (){
                      // Get.to(()=>RefreshData());
                    },
                  ),
                ),

                const SizedBox(height: 10.0,),
                Text(
                  'Last data updated: 12 sec ago',
                ),
              ],
            );

          }
        },
      ),
      drawer: SideDrawer(),
    );
  }
}
