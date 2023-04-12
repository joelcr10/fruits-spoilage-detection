
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits/home.dart';
import 'package:get/get.dart';

import 'welcome.dart';
import 'globalVariables.dart' as global;

class SideDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      width: 230.0,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 140.0,
            child: DrawerHeader(

              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Joel C Raju',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                      global.userName,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20.0,),
          ListTile(
            leading: const Icon(Icons.home_outlined, size: 35.0, color: Colors.grey,),
            title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
            ),
            onTap: () {
              Get.to(()=>MyHomePage());
              // Update the state of the app.
              // ...
            },
          ),

          const SizedBox(height: 10.0,),
          ListTile(
            leading: const Icon(Icons.person_2_outlined, size: 35.0, color: Colors.grey,),
            title: const Text(
              'Profile',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),

          const SizedBox(height: 10.0,),
          ListTile(
            leading: const Icon(Icons.logout_outlined, size: 35.0, color: Colors.grey,),
            title: const Text(
              'Sign Out',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(


                // title: const Text('Sign Out',
                //   style: TextStyle(color: Colors.black),
                // ),
                content: const Text('Are you sure you want to Sign Out?'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () async {
                      global.currentUser = '';
                      await FirebaseAuth.instance.signOut();
                      Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(builder: (context) => WelcomeScreen()),(_) => false,);

                    },
                    child: const Text('Leave',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                backgroundColor: Colors.green,
              ),
            ),

          ),
        ],
      ),
    );
  }


}