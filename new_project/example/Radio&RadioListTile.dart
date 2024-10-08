import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _materialApp();
}

class _materialApp extends State<MyApp> {

  String? country ;
  int? age ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title : Text("MyApp")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Your country is .... ",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20)
              ),
              Container(
                child : RadioListTile(
                  activeColor: Colors.blue,
                  title: Text("Egypt"),
                  value:"Egypt" ,
                  groupValue: country ,
                  onChanged: (val){
                    setState(() {
                      country= val ; 
                    });
                  }
                )
              ),
              Container(
                child : RadioListTile(
                  activeColor: Colors.blue,
                  title: Text("Syria"),
                  value:"Syria" ,
                  groupValue: country ,
                  onChanged: (val){
                    setState(() {
                      country= val ; 
                    });
                  }
                )
              ),
              Container(
                child : RadioListTile(
                  activeColor: Colors.blue,
                  title: Text("Jordan"),
                  value:"Jordan" ,
                  groupValue: country ,
                  onChanged: (val){
                    setState(() {
                      country= val ; 
                    });
                  }
                )
              ),
              Text("Your age is greater than  .... ",textAlign: TextAlign.left,style: TextStyle(fontSize: 20)),
              Container(
                child : RadioListTile(
                  activeColor: Colors.blue,
                  title: Text("15"),
                  value:15,
                  groupValue: age ,
                  onChanged: (val){
                    setState(() {
                      age = val;
                    });
                  }
                )
              ),
              Container(
                child : RadioListTile(
                  activeColor: Colors.blue,
                  title: Text("20"),
                  value:20,
                  groupValue: age ,
                  onChanged: (val){
                    setState(() {
                      age = val;
                    });
                  }
                )
              ),
              Container(
                child : RadioListTile(
                  activeColor: Colors.blue,
                  title: Text("25"),
                  value:25,
                  groupValue: age ,
                  onChanged: (val){
                    setState(() {
                      age = val;
                    });
                  }
                )
              ),
              
              Text("Your counter is $country",textAlign: TextAlign.left,style: TextStyle(fontSize: 20),),
              Text("Your age is up to $age",textAlign: TextAlign.end,style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      )
    );
  }
}
