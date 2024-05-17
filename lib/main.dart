import 'package:flutter/material.dart';
import 'package:lab_work/DetailsActivity.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan)),
      home: const HomeScreen(),
    );
  }

}
var listItem = [
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December"
];
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const Icon(Icons.home),title: const Text('Home'),
        backgroundColor: Colors.pink.shade100,),
      body: ListView.builder(
          itemCount: listItem.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                int numberOfMunth=index+1;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsActivity
                    ( month: listItem[index], nth: numberOfMunth.toString(),)),
                );
              },
              child:ListTile(
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero
                  ,side:BorderSide(color: Colors.grey),),
                leading: Icon(Icons.calendar_month),
                title: Text(listItem[index]),) ,
              );

          }
      ),
    );
  viewDetails(){

  }

  }
}


