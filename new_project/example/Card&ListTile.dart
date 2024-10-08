import 'package:flutter/material.dart';



void main ()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("MyApp"),),
        body:ListView(
          children: [
            Card(
              margin:EdgeInsets.all(20) ,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
              child: ListTile(
                leading: Text("1"),
                onTap: () {
                  print("ontap");
                },
                onLongPress: () {
                  print("on long press ");
                },
                  title:Text("First") ,
                  subtitle: Text("math"),
                  trailing: Text("2024"),
               ),
            ),
            Card(
              child: ListTile(
                leading: Text("2"),
                onTap: () {
                  print("ontap");
                },
                onLongPress: () {
                  print("on long press ");
                },
                  title:Text("Second") ,
                  subtitle: Text("signals"),
                  trailing: Text("2024"),
               ),
            )
          ],
        ) ,),
    );
  }

}
