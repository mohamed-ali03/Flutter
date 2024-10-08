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
          child:  ListView(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText:"username" ,
                  prefix: Icon(Icons.person,color: Colors.black,),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text("Email"),
                  suffix: Icon(Icons.email),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  label: Text("username"),
                  suffixIcon: Icon(Icons.person),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email)
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  label: Text("username"),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  label: Text("Email"),
                  icon: Icon(Icons.email),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
  
}
