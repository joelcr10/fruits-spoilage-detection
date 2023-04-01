import 'package:flutter/material.dart';


class SpoiledFruits extends StatefulWidget{
  const SpoiledFruits({super.key});
  @override
  State<SpoiledFruits> createState() => SpoiledFruitsState();
}

class SpoiledFruitsState extends State<SpoiledFruits>{
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
            ],
          ),
        ),
      ),
    );
  }
}