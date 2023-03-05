import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  void CameraButton(){
    print('heyy');
  }
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),

          title: const Text('Fruit Freshness'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            tabs: <Widget>[
              Tab(
                text: "All Fruits",
              ),
              Tab(
                text: "Fresh",
              ),
              Tab(
                text: "Going Bad",
              ),
              Tab(
                text: "Spoiled",
                // icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
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
              ),
            Center(
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
                      // Container(
                      //   height: 170,
                      //   alignment: Alignment.center,
                      //   child: Card(
                      //     margin: const EdgeInsets.all(10),
                      //     elevation: 10,
                      //     clipBehavior: Clip.antiAliasWithSaveLayer,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(12.0),
                      //     ),
                      //     child: Stack(
                      //       children: [
                      //         Image.asset(
                      //           'assets/images/banana.jpg',
                      //           fit: BoxFit.fitWidth,
                      //           width: 400,
                      //           // height: 500,
                      //         ),
                      //         Container(
                      //           decoration: BoxDecoration(
                      //             gradient: LinearGradient(
                      //               begin: Alignment.topCenter,
                      //               end: Alignment.bottomCenter,
                      //               colors: [Colors.transparent, Colors.black87],
                      //             ),
                      //
                      //           ),
                      //         ),
                      //         Positioned(
                      //           bottom: 10,
                      //           left: 10,
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             children: [
                      //               Text(
                      //                 'BANANA',
                      //                 style: TextStyle(
                      //                   color: Colors.white,
                      //                   fontSize: 30,
                      //                   fontWeight: FontWeight.bold,
                      //                 ),
                      //               ),
                      //               Text(
                      //                 'Location of banana',
                      //                 style: TextStyle(
                      //                   color: Colors.white,
                      //                   fontSize: 20,
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      //
                      // ),
                      // Container(
                      //   height: 170,
                      //   alignment: Alignment.center,
                      //   child: Card(
                      //     margin: const EdgeInsets.all(10),
                      //     elevation: 10,
                      //     clipBehavior: Clip.antiAliasWithSaveLayer,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(12.0),
                      //     ),
                      //     child: Stack(
                      //       children: [
                      //         Image.asset(
                      //           'assets/images/oranges.jpg',
                      //           fit: BoxFit.fitWidth,
                      //           width: 400,
                      //           // height: 500,
                      //         ),
                      //         Container(
                      //           decoration: BoxDecoration(
                      //             gradient: LinearGradient(
                      //               begin: Alignment.topCenter,
                      //               end: Alignment.bottomCenter,
                      //               colors: [Colors.transparent, Colors.black87],
                      //             ),
                      //
                      //           ),
                      //         ),
                      //         Positioned(
                      //           bottom: 10,
                      //           left: 10,
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             children: [
                      //               Text(
                      //                 'ORANGES',
                      //                 style: TextStyle(
                      //                   color: Colors.white,
                      //                   fontSize: 30,
                      //                   fontWeight: FontWeight.bold,
                      //                 ),
                      //               ),
                      //               Text(
                      //                 'Location of oranges',
                      //                 style: TextStyle(
                      //                   color: Colors.white,
                      //                   fontSize: 20,
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      //
                      // ),
                    ],
                  ),
                ),
              ),
            ),

            Center(
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
            ),
            Center(
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
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: CameraButton,
          // tooltip: 'Increment',
          backgroundColor: Colors.green,
          child: const Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}

