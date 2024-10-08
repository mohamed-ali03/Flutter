import 'package:flutter/material.dart';
import 'package:firstapp/btnavegator.dart';
import 'package:firstapp/forgetPassword.dart';
import 'package:firstapp/signUpOrientation.dart';
import 'package:firstapp/data.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

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
        actions: [
            button_sign('go to home'),
        ],
      ),
      body: Container(
        color: Colors.transparent,
        margin: EdgeInsets.all(10.0),
        child: Column(
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
            user_phoneNumber = '01003702619';
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
    return Container(
      padding: EdgeInsets.all(10),
      
      child: InkWell(
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
          else if (label == 'go to home'){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => btnavegator()));
          }
        },
        child: Text(
          label,
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
