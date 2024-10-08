import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List empolyee = [
    {'name': 'mohammed', 'age': 21, 'lastName': 'ali'},
    {'name': 'ahmed', 'age': 24, 'lastName': 'ali'},
    {'name': 'gehan', 'age': 18, 'lastName': 'ali'},
    {'name': 'ibrahem', 'age': 21, 'lastName': 'ali'},
    {'name': 'ali', 'age': 24, 'lastName': 'ali'},
    {'name': 'hanan', 'age': 18, 'lastName': 'ali'},
    {'name': 'saad', 'age': 21, 'lastName': 'ali'},
    {'name': 'nour', 'age': 24, 'lastName': 'ali'},
    {'name': 'omar', 'age': 18, 'lastName': 'ali'},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("MyApp"),
            ),
            body: GridView.count(
              crossAxisCount: 2,
              //reverse: true ,
              children: [
                Container(
                  width: 100,
                  color: Colors.amber,
                  child: Text(empolyee[0]['name'],textAlign:TextAlign.center,),
                ),
                Container(
                  color: Colors.orange,
                  child: Text(empolyee[1]['name']),
                ),
                Container(
                  color: Colors.purple,
                  child: Text(empolyee[2]['name']),
                ),
              ],
            )));
  }
}
