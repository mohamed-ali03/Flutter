import 'package:flutter/material.dart';
import 'package:firstapp/data.dart';

class account extends StatefulWidget {

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        backgroundColor: Colors.blue,
        actions: [
          MaterialButton(
            
            onPressed: (){

            },
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
        
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/4,
              margin :EdgeInsets.all(10.0),
              child: ClipOval(
              child: Image.network(user_image),
            ),
          ),
          _data('Name', user_name),
          _data('Email Address', user_email),
          _data('Password', user_password),
          _data('Phone Number', user_phoneNumber),
          ],
        ),
      ),
    );
  }



  _data (String label,String data_){
    return ListTile(
        contentPadding: EdgeInsets.only(top: 20,right: 10,left: 10),
        title: Text(label),
        subtitle: Text(data_),
        trailing: MaterialButton(
          onPressed: () {

          },
          child: Icon(Icons.edit),
          ),
      );
  }
}