import"package:flutter/material.dart";


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() =>_materialApp() ;

}

class _materialApp extends State<MyApp> {

  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text("TextFormField")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            key:formstate ,
            child:Column(
              children: [
                TextFormField(
                  validator: (value){
                    if (value!.isEmpty){
                      return"Field is empty";
                    }
                    else if (value.length <11 || value.length >11){
                      return"value you entered must has length 11";
                    }
                  },
                ),
                MaterialButton(
                  onPressed: (){
                    if (formstate.currentState!.validate()){
                    }
                  },
                  child: Text("Valid"),
                )
              ],
            )
            ),
        )
        ),
    );
  }


}