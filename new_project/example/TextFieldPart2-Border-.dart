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
                enabled: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.green) ,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  )
                ),
              ),
              Container(height: 20,),
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:BorderSide(color: Colors.green) ,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  )
                ),
              )
            ],
          ),
        ),
      )
    );
  }
  
}
