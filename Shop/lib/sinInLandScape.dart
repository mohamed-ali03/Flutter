import 'package:flutter/material.dart';
import 'package:firstapp/btnavegator.dart';
import 'package:firstapp/forgetPassword.dart';
import 'package:firstapp/signUpOrientation.dart';
import 'package:firstapp/data.dart';

class sinInLandScape_ extends StatefulWidget {
  @override
  State<sinInLandScape_> createState() => _sinInLandScape_State();
}

class _sinInLandScape_State extends State<sinInLandScape_> {
  List screen_sign = [forgetPassword(), btnavegator(), signUpOrientation_()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.transparent,
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                notSecureField(
                    'Email', TextInputType.emailAddress, Icon(Icons.person)),
                SecureField('Password', TextInputType.visiblePassword,
                    Icon(Icons.remove_red_eye)),
                button_sign('forget password'),
                button_sign('sign in'),
                button_sign('sign up'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  notSecureField(
    String? label,
    TextInputType textType,
    Icon symbol,
  ) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: TextField(
        onChanged: (value) {
          if (label == 'Email') {
            user_email = value;
            user_name = 'mohamed Ali';
          } else {}
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          hintText: 'mohamedali163',
          suffix: symbol,
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        keyboardType: textType,
      ),
    );
  }

  SecureField(
    String? label,
    TextInputType textType,
    Icon symbol,
  ) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: TextField(
        obscureText: true,
        onChanged: (value) {
          if (label == 'Password' && value.length >= 8) {
            user_password = value;
          } else {}
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            focusColor: Colors.green,
            hintText: 'aaaakkkk',
            suffix: symbol,
            labelText: label,
            labelStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )),
        keyboardType: textType,
      ),
    );
  }

  button_sign(String label) {
    return InkWell(
      onTap: () {
        if (label == 'sign in') {
          if (Email == user_email && password == user_password) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => btnavegator()));
          } else {
            print('error');
          }
        } else if (label == 'sign up') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => signUpOrientation_()));
        } else if (label == 'forget password') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => forgetPassword()));
        }
      },
      child: Text(
        label,
        style: TextStyle(
            fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
