import 'package:flutter/material.dart';
import 'package:lab_work/main.dart';

import 'ActionBar.dart';
import 'AppBarLeading.dart';

class DetailsActivity extends StatelessWidget {
  static const details ='It is details page';
  static const title = 'Details Page';

  const DetailsActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          backgroundColor: Colors.black,
          body: DefaultTabController(
             length: 4,
             child: Scaffold(
                 appBar: AppBar(
                   backgroundColor: Colors.transparent, 
                   elevation: 0, 
                   iconTheme: const IconThemeData(
                     color: Colors.grey 
                   ), 
                   title: const Text(title, style: TextStyle(color: Colors.grey)), 
                   actions: [actionBar()],
                   bottom: const TabBar(
                     indicatorColor: Colors.black54, 
                     tabs: [
                       Tab(
                         icon: Icon(Icons.home,color: Colors.grey,),
                         child: Text('Overview',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                       ),
                       Tab(
                         icon: Icon(Icons.favorite,color: Colors.grey,),
                         child: Text('Docs',style: TextStyle(fontWeight:
                         FontWeight.bold,color: Colors.red),),
                       ),
                       Tab(
                         icon: Icon(Icons.list,color: Colors.grey,),
                         child: Text('Information',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                       ),
                       Tab(
                         icon: Icon(Icons.info,color: Colors.grey,),
                         child: Text('Other',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                       )
                   ],

                   ),

          
               ),
               body: const TabBarView(
                 children: [
                   SizedBox(
                     child: Center(
                       child: Text('This is overview details'),
                     ),
                   ),
                   SizedBox(
                     child: Center(
                       child: Text('This is docs details'),
                     ),
                   ),
                   SizedBox(
                     child: Center(
                       child: Text('This is Information details'),
                     ),
                   ),
                   SizedBox(
                     child: Center(
                       child: Text('This is other details'),
                     ),
                   ),
                 ],
               ),
            )
          )
        );
  }
}
