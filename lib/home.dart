import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';
import 'package:fruits/fresh.dart';
import 'package:fruits/rotting.dart';
import 'package:fruits/spoiled.dart';
import 'All.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Uint8List? imageFileUint8List;
  CameraButton() async{
    try{
      final pickedImage = await ImagePicker().pickImage(source: ImageSource.camera);

      if(pickedImage != null){
        String imagePath = pickedImage.path;
        imageFileUint8List =  await pickedImage.readAsBytes();


        setState(() {
          imageFileUint8List;
        });
      }
    }
    catch(errorMsg){
      print(errorMsg.toString());
      setState(() {
        imageFileUint8List = null;
      });
    }
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

          title: const Text('Fruit Freshness Detection'),
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
                text: "Rotting",
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
            //All fruits list
            AllFruits(),
            //fresh fruits list
            FreshFruits(),
            // rotting fruits
            RottingFruits(),
            // Spoiled fruits list
            SpoiledFruits(),

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

