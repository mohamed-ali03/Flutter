import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _materialApp();
}

class _materialApp extends State<MyApp> {

  bool status_1 = true;
  bool status_2 = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title : Text("MyApp")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: 500,
                height: 50,
                child : SwitchListTile(
                  title: Text("Status"),
                  activeColor: Colors.blue,
                  inactiveTrackColor: Colors.black,
                  activeTrackColor: Colors.amber[400],
                  activeThumbImage: NetworkImage("https://cdn0.iconfinder.com/data/icons/communication-4-2/98/187-512.png"),
                  value: status_1,
                   onChanged: (val) {
                  setState(() {
                    status_1 = val;
                  }
                  );
                },)
              ),
              Container(
                child : Switch(
                  activeThumbImage: NetworkImage("https://th.bing.com/th/id/OIP.txtPMAJk6GRnIi8RM93T1gHaHa?rs=1&pid=ImgDetMain"),
                  value: status_2, 
                  onChanged: (val) {
                  setState(() {
                    status_2 = val;
                  });
                },)
              )
            ],
          ),
        ),
      )
    );
  }
}
