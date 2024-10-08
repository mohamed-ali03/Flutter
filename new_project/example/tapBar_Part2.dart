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
      home: DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[300],
          title: Text("App TabBar"),
          bottom: const TabBar(
            indicatorColor: Colors.amber,
            indicatorWeight: 20,
            unselectedLabelColor: Colors.grey,
            dividerColor: Colors.red,
            dividerHeight: 10,
            //isScrollable: true,
            labelColor: Colors.deepPurple,
            labelStyle: TextStyle(fontSize: 20),
            unselectedLabelStyle: TextStyle(fontSize: 10),
            tabs: [
            Tab(
              iconMargin: EdgeInsets.all(10), // make space between icon and text
              icon: Icon(Icons.mobile_friendly),
              text: "Reels",),
            Tab(
              icon: Icon(Icons.home),
              text: "Home",)
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


