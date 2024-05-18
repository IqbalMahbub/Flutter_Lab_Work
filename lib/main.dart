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
const title='Google Cloud';
AppBarLeading(){
  return const Icon(Icons.menu);
}
actionBar(){
  return Icon(Icons.share);
}

final List<Map<String, dynamic>> listItem = [
  {'name': 'Cloud Functions', 'icon': Icons.cloud},
  {'name': 'App Engine', 'icon': Icons.build},
  {'name': 'Kubernetes Engine', 'icon': Icons.memory},
  {'name': 'Compute Engine', 'icon': Icons.computer},
  {'name': 'Bare Metal', 'icon': Icons.settings_input_hdmi},
  {'name': 'Preemptible VMs', 'icon': Icons.schedule},
  {'name': 'Shielded VMs', 'icon': Icons.security},
  {'name': 'Sole-tenet Nodes', 'icon': Icons.person},
  {'name': 'VMWare Engine', 'icon': Icons.storage},
  {'name': 'Cloud Firestore', 'icon': Icons.book},
  {'name': 'Cloud Storage', 'icon': Icons.storage},
  {'name': 'Persistent Disk', 'icon': Icons.sd_storage},
  {'name': 'Local SSD', 'icon': Icons.sd_card},
  {'name': 'Cloud Bigtable', 'icon': Icons.table_chart},
  {'name': 'Cloud Memorystore', 'icon': Icons.memory},
  {'name': 'Cloud Spanner', 'icon': Icons.storage},
];
mySnackBar(context,msg,){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:  AppBarLeading(),title: const Text
        (title),
        backgroundColor: Colors.pink.shade100,
        actions: [
          actionBar(),
        ],),
      body: ListView.builder(
          itemCount: listItem.length,
          itemBuilder: (context,index){
            return InkWell(

              onDoubleTap: (){
                int numberOfMonth=index+1;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsActivity(),
                  )
                );
              },
              onTap: (){
                  mySnackBar(context,  listItem[index]['name']);
              },
              child:ListTile(
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero
                  ,side:BorderSide(color: Colors.grey),),
                leading:  Icon(listItem[index]['icon']),
                title: Text(listItem[index]['name']),) ,
              );

          }
      ),
    );

  }
}


