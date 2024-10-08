import "package:flutter/material.dart";

void main() {
  runApp(IslamicApp());
}

class IslamicApp extends StatefulWidget {
  State<IslamicApp> createState() => AlzafirApp();
}

class AlzafirApp extends State<IslamicApp> {

  String? Username ;
  String? Username_real = "mohamedali" ;
  

  String? Password ;
  String? Password_real = "hamo56<>" ;

  String? output ;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Alzafir App")),
          body: Container(
            child :ListView(
              children: [


                  Container(
                    height: 150,
                    color: Color(0xff0866ff),
                    child :Container(child: Image.network("https://th.bing.com/th/id/R.ea42a28baacca4dcef9b29046c93ad6e?rik=EyR3Kt0rhySAqg&pid=ImgRaw&r=0&sres=1&sresct=1"),),
                  ),

                  Container(
                    alignment: Alignment.center,
                    color : Color(0xff0866ff),
                    child: Text("Welcome",style: TextStyle(fontSize: 50,color: Colors.white),),),



                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                    child:  TextField(
                      onChanged: (val){
                        setState(() {
                          Username = val ;
                        });
                        Username = val ;
                      },
                      decoration: InputDecoration(
                        suffix: Icon(Icons.person),
                        label: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide:BorderSide(color: Colors.green) ,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),


                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                    child:  TextField(
                      maxLength: 8,
                      onChanged: (val){
                        setState(() {
                          Password = val ;
                        });
                        Password = val ;
                      },
                      decoration: InputDecoration(
                        suffix: Icon(Icons.key),
                        label: Text("Password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide:BorderSide(color: Colors.green) ,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),


                  MaterialButton(
                    color: Colors.blue,
                    onPressed: (){
                      setState(() {
                        if (Username == Username_real && Password == Password_real){
                          output = "success";
                        }
                        else {
                          output = "username or password is wrong ,please try again ";
                        }
                      });
                      },
                      child: Text("Submit",style: TextStyle(fontSize: 15),),
                    ),
                    Text("$output"),
              ],
              )
            )
          ),
    );
  }
}
