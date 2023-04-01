import 'package:flutter/material.dart';

class RottingFruits extends StatefulWidget{
  const RottingFruits({super.key});
  @override
  State<RottingFruits> createState() => RottingFruitsState();
}

class RottingFruitsState extends State<RottingFruits>{
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
            ],
          ),
        ),
      ),
    );
  }
}