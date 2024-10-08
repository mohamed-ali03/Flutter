import 'package:firstapp/HomePage.dart';
import 'package:firstapp/btnavegator.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/data.dart';


class signUp_ extends StatefulWidget {

  @override
  State<signUp_> createState() => _signUp_State();
}

class _signUp_State extends State<signUp_> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sign up'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                notSecuredField('Image', TextInputType.url, Icon(Icons.image),'your image'),
                notSecuredField('Name', TextInputType.name, Icon(Icons.person),'your name'),
                notSecuredField('Email', TextInputType.emailAddress, Icon(Icons.email),'example@gmail.com'),
                notSecuredField('Phone Number', TextInputType.phone, Icon(Icons.phone),'phone'),
                SecureField('Password', TextInputType.visiblePassword, Icon(Icons.key),'enter password'),
                SecureField('confirm password', TextInputType.visiblePassword, Icon(Icons.key),'confirm password'),
                InkWell(
                  onTap: () {
                    if (user_password == user_Cnfpassword &&
                        user_name != '0' &&
                        user_email != '0' &&
                        user_password != '0' &&
                        user_phoneNumber !='0') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => btnavegator()));
                    }
                    else {
                      print('error');
                    }
                  },
                  child: Text(
                    'sign up',
                    style: TextStyle(fontSize: 20.0),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  notSecuredField(String label, TextInputType textType, Icon symbol,String hint) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: TextField(
        onChanged: (value) {
          if (label == 'Email') {
            user_email = value;
          }else if (label == 'Name') {
            user_name = value;
          }else if (label =='Phone Number'){
            user_phoneNumber = value ;
          }else if (label == 'Image'){
            user_image =value ;
          }
          else {}
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: hint,
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


  SecureField(
    String? label,
    TextInputType textType,
    Icon symbol,
    String hint,
  ) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: TextField(
        obscureText: true,
        onChanged: (value) {
          if (label == 'Password' && value.length >= 8) {
            user_password = value;
          }else if (label == 'confirm password') {
            user_Cnfpassword = value;
          } 
          else {}
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: hint,
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
}
