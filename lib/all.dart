import 'package:flutter/material.dart';
import 'package:fruits/bananaPage.dart';
import 'package:fruits/fruitInfo.dart';
import 'package:get/get.dart';

import 'ApplePage.dart';

class AllFruits extends StatefulWidget{
  const AllFruits({super.key});

  @override
  State<AllFruits> createState() => AllFruitsState();
}

class AllFruitsState extends State<AllFruits>{
  Future<void> computeFuture = Future.value();
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 40),
        child: Center(
          child: ListView(
            children: [
              Container(
                height: 170,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){

                    Get.to(()=>const ApplePage());
                  },
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 10,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/apples.jpg',
                          fit: BoxFit.fitWidth,
                          width: 400,
                          // height: 500,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.transparent, Colors.black87],
                            ),

                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'APPLES',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Location of apple',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
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
              Container(
                height: 170,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Get.to(()=>BananaPage());
                  },
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 10,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/banana.jpg',
                          fit: BoxFit.fitWidth,
                          width: 400,
                          // height: 500,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.transparent, Colors.black87],
                            ),

                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'BANANA',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Location of banana',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
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
              Container(
                height: 170,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                        Get.to(FruitsInfo(),arguments: ["Banana"]);
                  },
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 10,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/oranges.jpg',
                          fit: BoxFit.fitWidth,
                          width: 400,
                          // height: 500,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.transparent, Colors.black87],
                            ),

                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ORANGES',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Location of oranges',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
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
            ],
          ),
        ),
      ),
    );
  }
}