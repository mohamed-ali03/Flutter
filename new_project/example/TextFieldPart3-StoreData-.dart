import"package:flutter/material.dart";


void main (){

  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  State<MyApp> createState() => _materialApp ();
}

class _materialApp extends State<MyApp> {

  String? Email ;
  TextEditingController username = TextEditingController();
  Widget build (BuildContext context){
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title: Text("MyApp")),
        body :Container(
          padding: EdgeInsets.all(10),
          child:  Column(
            children: [
              TextField(
                controller: username,
              ),
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  setState(() {
                  });
                },
                child: Text("print"),
              ),
              Text(username.text),

    
              Container(height: 50,),


              TextField(
                onChanged: (value) {
                  setState(() {
                  Email = value ;
                  });
                },
              ),
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  setState(() {
                  });
                },
                child: Text("print"),
              ),
              Text("$Email"),

            ],
          ),
        ),
      )
    );
  }
  
}
