import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _materialApp();
}

class _materialApp extends State<MyApp> {

  bool? status_1 = false;
  bool? status_2 = false;
  bool? status_3 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title : Text("MyApp")),
        body: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Checkbox(
                      value: status_1, 
                      onChanged: (val){
                        setState(() {
                          status_1 = val ;
                        });
                    }),
                    CheckboxListTile(
                      title: Text("Status",style: TextStyle(fontSize: 20),),
                      checkColor: Colors.red,
                      value: status_2, 
                      onChanged: (val){
                        setState(() {
                          status_2 = val ;
                        });
                    }),
                    CheckboxMenuButton(
                      value: status_3, 
                      onChanged: (val){
                        setState(() {
                          status_3 = val ;
                        });
                    }, child: Text("Data",style: TextStyle(fontSize: 20),),),
                  ],
                ),
        ),
      )
    );
  }
}
