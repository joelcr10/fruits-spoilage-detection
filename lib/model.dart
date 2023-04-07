import 'package:flutter/material.dart';

class FruitModel{
  final String name;

  const FruitModel({
    required this.name,
});

  toJson(){
    return{
      "Name": name,
    };
  }

}
