


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits/drawerWidget.dart';

class ApplePage extends StatefulWidget {
  const ApplePage({super.key});
  // final String title;

  @override
  State<ApplePage> createState() => ApplePageState();
}

class ApplePageState extends State<ApplePage>{
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
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(40)),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/apples.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
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
      body: Column(
        children: [
          const SizedBox(height: 20.0,),
          const Center(
            child: Text(
              'STATE OF APPLE',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
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
                                 'Ethylene',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                             ),

                            const SizedBox(height: 2.0,),
                            Text(
                              '16.01%',
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
                              '31.24%',
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
                              '05.10%',
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
                  color: Color(0xffFF9699),
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
                              'Methane',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),

                            const SizedBox(height: 2.0,),
                            Text(
                              '14.18%',
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
        ],
      ),
      drawer: SideDrawer(),
    );
  }
}
