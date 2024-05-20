import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lab_work/main.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Icon(Icons.ac_unit_outlined,)),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text('Home'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)
              => const HomeScreen()));
            }
          ),
          ListTile(
              leading: const Icon(Icons.info),
              title: Text('Details'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)
                => const HomeScreen()));
              }
          ),
        ],
      ),
    );
  }

}