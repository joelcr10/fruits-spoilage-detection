import 'package:flutter/material.dart';

import 'globalVariables.dart' as globals;
class CurrentUser{
  String? currentUserId;
  String userEmail = '';
  String name = '';
  String phoneNo = '';

  set setCurrentUserId(String userId){
    globals.currentUser = userId;
  }

  String? get getCurrentUserId{
    return currentUserId;
  }
}
