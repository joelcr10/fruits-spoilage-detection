
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'welcome.dart';

class SideDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      width: 230.0,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 120.0,
            child: DrawerHeader(

              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                  'User profile',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20.0,),
          ListTile(
            leading: const Icon(Icons.home_outlined, size: 35.0, color: Colors.black,),
            title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),

          const SizedBox(height: 10.0,),
          ListTile(
            leading: const Icon(Icons.person_2_outlined, size: 35.0, color: Colors.black,),
            title: const Text(
              'Profile',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),

          const SizedBox(height: 10.0,),
          ListTile(
            leading: const Icon(Icons.logout_outlined, size: 35.0, color: Colors.black,),
            title: const Text(
              'Sign Out',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
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
                      await FirebaseAuth.instance.signOut();
                      Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(builder: (context) => WelcomeScreen()),(_) => false,);

                    },
                    child: const Text('Leave',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                backgroundColor: Colors.green,
              ),

              ),
                // await FirebaseAuth.instance.signOut();
                // Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(builder: (context) => WelcomeScreen()),(_) => false,);
                // },
              // Update the state of the app.
              // ...

          ),
        ],
      ),
    );
  }


}