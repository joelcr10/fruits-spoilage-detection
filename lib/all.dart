import 'package:flutter/material.dart';

// void main() => runApp(AllFruits());

class AllFruits extends StatefulWidget{
  const AllFruits({key? key}) : super(key: key);
  AllFruitsState createState() => AllFruitsState();
}

class AllFruitsState extends StatelessWidget{
  @override
  Widget Build(BuildContext context){
    return Container(
      child: Text('this is a test'),
    );
  }
}