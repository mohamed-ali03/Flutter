import"package:flutter/material.dart";


void main (){

  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  State<MyApp> createState() => _materialApp ();
}

class _materialApp extends State<MyApp> {

  Widget build (BuildContext context){
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title: Text("MyApp")),
        body :Container(
          padding: EdgeInsets.all(10),
          child:  ListView(
            children: [
              TextField(
                maxLength: 500,
                keyboardType: TextInputType.number,
                minLines: 1,
                maxLines: 4,
                decoration: InputDecoration(
                  
                ),
              )
            ],
          ),
        ),
      )
    );
  }
  
}
