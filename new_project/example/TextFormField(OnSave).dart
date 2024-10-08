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

  String? username ;  
  String? password ;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text("TextFormField")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key:formstate ,
            child:Column(
              children: [

                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("username"),
                    suffix: Icon(Icons.person),
                  ),

                  onSaved: (value) {
                    username=value;
                  },
                  validator: (value){
                    if (value!.isEmpty){
                      return"Field is empty";
                    }
                  },
                ),

                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("password"),
                    suffix: Icon(Icons.key),
                  ),

                  onSaved: (value) {
                    password=value;
                  },
                  validator: (value){
                    if (value!.isEmpty){
                      return"Field is empty";
                    }
                    else if (value.length <8 || value.length >8){
                      return"value you entered must has length 8";
                    }
                  },
                ),

                MaterialButton(
                  onPressed: (){
                    if (formstate.currentState!.validate()){
                      formstate.currentState!.save();
                      print(username);
                      print(password);
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