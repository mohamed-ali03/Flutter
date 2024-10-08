import"package:flutter/material.dart";
import "package:flutter_launcher_icons/xml_templates.dart";


void main(){
  runApp(MyApp());
}

class MyApp  extends StatefulWidget{
  @override
  State<MyApp> createState() => _materialApp();
}

class _materialApp extends State<MyApp>  with SingleTickerProviderStateMixin{

  //TabController tabcontrol = TabController(length: 2, vsync:this ); //this way is wrong
  TabController? tabcontrol;
  @override
  void initState() {
    tabcontrol = TabController(length: 2, vsync: this);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[300],
          title: Text("App TabBar"),
          bottom:  TabBar(
            controller: tabcontrol,
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
          child:  TabBarView(
            controller: tabcontrol,
            children: [
              Text('reels'),
              Text('home'),
            ],
          ),
        ),
        )
    );
  }
}


