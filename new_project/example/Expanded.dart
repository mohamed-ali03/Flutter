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
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(color: Colors.red,  height: 100,),),
            Expanded(
              flex: 2,
              child: Container(color: Colors.yellow,  height: 100,),),
            Expanded(
              flex: 3,
              child: Container(color: Colors.green,  height: 100,),)
          ],
        )
        // Row(
        //   children: [
        //     Expanded(
        //       flex: 1,
        //       child: Container(color: Colors.red, width: 130 , height: 100,),),
        //     Expanded(
        //       flex: 2,
        //       child: Container(color: Colors.yellow, width: 130 , height: 100,),),
        //     Expanded(
        //       flex: 3,
        //       child: Container(color: Colors.green, width: 130 , height: 100,),)
        //   ],
        // ),
      ),
    );
  }



}