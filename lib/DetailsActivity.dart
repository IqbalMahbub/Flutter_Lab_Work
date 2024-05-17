import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsActivity extends StatelessWidget {
  const DetailsActivity({super.key, required this.month, required this.nth});
  final String month;
  final String nth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(leading: const Icon(Icons.details),title: const Text
          ('Details Page'),
          backgroundColor: Colors.pink.shade100,),
      body: Text('You presed $month. This is the $nth th month of the Year'  ),
    );
  }
}
