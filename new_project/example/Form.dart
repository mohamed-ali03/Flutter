import 'dart:math';

import 'package:flutter/material.dart';

void main (){
  runApp(NewForm());
}

class NewForm extends StatefulWidget {
  @override
  State<NewForm> createState() => form() ;
}

class form extends State<NewForm> {

  GlobalKey<FormState> formstate = GlobalKey();
  String? firstname ;
  String? lastname ;
  String? email ;
  String? password ;
  String? Gender ;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("form"),backgroundColor: Colors.blue[300],),
        body: Container(

          padding: EdgeInsets.all(10),
          child:Form(
            key: formstate,
            child:  ListView(

              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 100,
                  color: Colors.orange[200],
                  child: Text("𝖋𝖔𝖗𝖒",style: TextStyle(fontSize: 30),),
                ),

                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("firstname"),
                    suffix: Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value!.isEmpty)
                    {
                      return"Field is empty";
                    }
                  },
                  onSaved: (value){
                    firstname = value ;
                  },
                ),

                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("lastname"),
                    suffix: Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value!.isEmpty)
                    {
                      return"Field is empty";
                    }
                  },
                  onSaved: (value){
                    lastname = value ;
                  },
                ),

                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("email"),
                    suffix: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value!.isEmpty)
                    {
                      return"Field is empty";
                    }
                  },
                  onSaved: (value){
                    email = value ;
                  },
                ),
                
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text("password"),
                    suffix: Icon(Icons.key),
                  ),
                  validator: (value) {
                    if (value!.isEmpty)
                    {
                      return"Field is empty";
                    }
                    else if (value.length != 8)
                    {
                      return "password must be 8 characters";
                    }
                  },
                  onSaved: (value){
                    password = value ;
                  },
                ),

                Column(
                  children: [
                    Container(
                      child: Text("Gender",style: TextStyle(fontSize: 20),),
                      alignment: Alignment.topLeft
                    ),
                    RadioListTile(
                      title: Text("man"),
                      value: "man", 
                      groupValue: Gender, 
                      onChanged: (value) {
                        setState(() {
                          Gender = "man";
                        });
                      },
                    ),
                     RadioListTile(
                      title: Text("woman"),
                      value: "woman", 
                      groupValue: Gender, 
                      onChanged: (value) {
                        setState(() {
                          Gender = "woman";
                        });
                      },
                    ),
                  ],
                ),

                MaterialButton(
                  color: Colors.blue,
                  onPressed: (){
                    if (formstate.currentState!.validate()){
                      formstate.currentState!.save();
                      print(firstname);
                      print(lastname);
                      print(email);
                      print(password);
                      print(Gender);
                    }
                  },
                  child: Text("vaild"),
                )
              ],
            ),
          )
        ),
      ),
    );
  }

}
