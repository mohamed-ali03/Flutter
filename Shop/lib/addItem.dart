import 'package:firstapp/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/data.dart';

class addItem_ extends StatefulWidget {

  @override
  State<addItem_> createState() => _addItem_State();
}

class _addItem_State extends State<addItem_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('addItem'),
        backgroundColor: Colors.blue,
        elevation: 10,
        ),
      body :Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            insertItem('image', TextInputType.url, 'post url',Icon(Icons.image)),
            insertItem('info', TextInputType.url, 'information about item',Icon(Icons.info)),

            button_post('post'),
          ],
        ),
      )
    );
  }




  insertItem(String label, TextInputType textType,String hint,Icon icon_) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: TextField(
        onChanged: (value) {
          if (label =='image'){
            insert_item_image = value;
          }
          else if (label == 'info'){
            insert_item_info =value ;
          }
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: hint,
            suffix: icon_,
            labelText: label,
            labelStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )),
        keyboardType: textType,
      ),
    );
  }
  
  button_post(String label) {
    return InkWell(
      
      onTap: () {
        if(insert_item_image != '0'&& insert_item_info != '0'){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        }
      },
      child: Container(
        width: 100,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}