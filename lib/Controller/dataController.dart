import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class DataController extends GetxController{

  Future getData() async{
    QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('User').doc('EWJrHpGXFvb2Zi09W3HJId3ssFu2').collection('Fruits').get();
    return snapshot.docs;
  }

  @override
  void onInit(){
    super.onInit();
  }

  void onClose(){
    super.onClose();
  }

  void onReady(){
    super.onReady();
  }
}