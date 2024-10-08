import 'package:flutter/material.dart';
import 'package:firstapp/signUpLandScape.dart';
import 'package:firstapp/signUpPortrait.dart';



class signUpOrientation_ extends StatefulWidget {
  const signUpOrientation_({super.key});

  @override
  State<signUpOrientation_> createState() => _signUpOrientation_State();
}

class _signUpOrientation_State extends State<signUpOrientation_> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait)
          {
            return signUp_();
          }
          else{
            return signUpLandScape_();
          }
        }, ),
    );
  }
}