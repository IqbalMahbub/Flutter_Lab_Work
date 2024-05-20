import 'package:flutter/material.dart';

mySnackBar(context,msg){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
}