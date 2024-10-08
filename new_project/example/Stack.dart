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
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          color: Colors.grey,
          child:  ListView(
            children: [
              Stack(
                children: [
                  Container(width:250, height: 200,color: Colors.red,),
                  Container(width:200, height: 100,color: Colors.yellow,),
                  Container(width:100, height: 50,color: Colors.blue,),
                ],
              ),
              Container(height: 10,width: 400,),
              Stack(
                children: [
                  Container(width:250, height: 200,color: Colors.red,),
                  Container(width:200, height: 100,color: Colors.yellow,),
                  Positioned(
                    bottom: 0,
                    child: Container(width:100, height: 50,color: Colors.blue,),
                  )
                ],
              ),
              Container(height: 10,width: 400,),
              Stack(
                children: [
                  Container(width:250, height: 200,color: Colors.red,),
                  Container(width:200, height: 100,color: Colors.yellow,),
                  Positioned(
                    bottom: -20,
                    child: Container(width:100, height: 50,color: Colors.blue,),
                    )
                ],
              ),
              Container(height: 100,width: 400,),
              Stack(
                clipBehavior: Clip.none, 
                children: [
                  Container(width:250, height: 200,color: Colors.red,),
                  Container(width:200, height: 100,color: Colors.yellow,),
                  Positioned(
                    bottom: -20,
                    child: Container(width:100, height: 50,color: Colors.blue,),
                    )
                ],
              ),
              Container(height: 100,width: 400,),

              
            ],
          ),
        ),
      )
    );
  }
  
}
