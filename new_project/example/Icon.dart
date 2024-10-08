import "package:flutter/material.dart";

void main ()
{
  runApp(MyApp());
}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First App")),
        body: Container(
          child: IconButton(
            icon: Icon(Icons.star,size: 200,),
            onPressed: () {
              print("on press");
            },
            iconSize: 200,
          ),
        ),
          
        
      ),
    );
  }



}