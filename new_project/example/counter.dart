import"package:flutter/material.dart";

void main ( )
{
  runApp( MyApp());
}


class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _materialApp();

  
}


class _materialApp extends State<MyApp> {
  int i =0 ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold( 
        floatingActionButton: FloatingActionButton.extended(onPressed: (){
          setState(() {
            i=0 ; 
          });
        },
        label: Icon(Icons.exposure_zero_outlined)),
        appBar: AppBar(title : Text("MyInteractiveApp")),
        body : ListView(
          padding: EdgeInsets.symmetric(horizontal: 50,vertical: 250),
          children: [
            Container(
              width: 50,
              height: 50,
              child: IconButton(onPressed:(){
              setState(() {
                i++;
              });
            } ,
            icon: Icon(Icons.add),),),
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Text("$i"),),
            Container(
              width: 50,
              height: 50,
              child: IconButton(onPressed:(){
              setState(() {
                i--;
              });
            } ,
            icon: Icon(Icons.remove),),),
          ],
          
        ),
      
      )
    );
  }

}