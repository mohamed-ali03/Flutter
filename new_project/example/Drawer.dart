import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _materialApp();
  }
}

class _materialApp extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child:Image.asset("images/Avater1.jpg",fit: BoxFit.cover,),),
                    ),
                    const Expanded(child:ListTile(
                        title: Text("Mohamed Ali"),
                        subtitle: Text("engmohamedali65@gmail.com"),
                      ) 
                    ) 
                  ],
                ),
                ListTile(
                  title: Text("homepage"),
                  leading: Icon(Icons.home),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("acount"),
                  leading: Icon(Icons.account_balance_sharp),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("order"),
                  leading: Icon(Icons.offline_bolt),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("about us "),
                  leading: Icon(Icons.question_mark_rounded),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("constact us "),
                  leading: Icon(Icons.phone_android_rounded),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("signout"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: (){},
                ),
              ],

            ),
          ),
        ),

        appBar:AppBar(
          backgroundColor: Colors.blue[300],
          title: Text("AppBar"),),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [

            ],
          ),
        ),
      ),
    );
  }

}
