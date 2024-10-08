import"package:flutter/material.dart";
import "package:flutter_launcher_icons/xml_templates.dart";


void main(){
  runApp(MyApp());
}

class MyApp  extends StatefulWidget{
  @override
  State<MyApp> createState() => _materialApp();
}

class _materialApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 2,child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[300],
          title: Text("App TabBar"),
          bottom: const TabBar(
            indicatorColor: Colors.amber,
            tabs: [
            Tab(child: Text("Reels"),),
            Tab(child: Text("Home"),)
          ]),),
        body: Container(
          padding: EdgeInsets.all(10),
          child: const TabBarView(
            children: [
              Text('reels'),
              Text('home'),
            ],
          ),
        ),
        )
      ),
    );
  }
}


