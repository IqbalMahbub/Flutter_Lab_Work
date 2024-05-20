import 'dart:js';

import 'package:flutter/material.dart';

import 'main.dart';
import 'mySnackBar.dart';

actionBar(){
  return IconButton(
      onPressed: (){
    mySnackBar(context,'You selected the Action: Share');
    },
      icon:const Icon(Icons.share)
  );
}