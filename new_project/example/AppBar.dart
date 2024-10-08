import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _materialApp();
  }
}

class _materialApp extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          elevation: 10,
          shadowColor: Colors.red,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.list),),
            IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
          ],
          backgroundColor: Colors.blue[300],
          title: Text("AppBar"),),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [

            ],
          ),
        ),
      ),
    );
  }

}
