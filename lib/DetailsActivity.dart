import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_work/main.dart';

import 'ActionBar.dart';
import 'AppBarLeading.dart';

class DetailsActivity extends StatelessWidget {
  static const details ='It is details page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(leading: AppBarLeading(),title: const Text
          (title),
          backgroundColor: Colors.pink.shade100,
        actions: [actionBar()],),
      body: const Text(details),
    );
  }
}
