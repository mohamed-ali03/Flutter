import 'package:flutter/material.dart';
import 'package:firstapp/SignInPortrait.dart';
import 'package:firstapp/sinInLandScape.dart';
void main (){
  runApp(myfirstapp());
}

class myfirstapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait)
          {
            return SignIn();
          }
          else{
            return sinInLandScape_();
          }
        }, ),
    );
  }
}