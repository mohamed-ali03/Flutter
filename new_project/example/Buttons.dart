import"package:flutter/material.dart";

void main ( )
{
  runApp( MyApp());
}


class MyApp extends StatelessWidget{

  int count = 0 ;
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(
        home: Scaffold(
          floatingActionButton :FloatingActionButton.extended(onPressed: (){
            count=1;
          }, label: Icon(Icons.add),) ,
          appBar: AppBar(title: const Text("MyApp"),),
          body:Container(
            padding: EdgeInsets.all(10),
            child: MaterialButton(onPressed: () { 
              print("onpressed");
             },
              child: Icon(Icons.add),
            )
          ) ,
        ),
      );
  }
  
  
  




  
}