import 'package:firstapp/account.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/HomePage.dart';

class btnavegator extends StatefulWidget {

  @override
  State<btnavegator> createState() => __btnavagtorStateState();
}

class __btnavagtorStateState extends State<btnavegator> {
  List screen = [
    HomePage(),account()
  ];
  int numPage = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Account')
        ],
        backgroundColor: Colors.grey,
        iconSize: 20.0,
        selectedFontSize: 20.0,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.black,size: 20.0),
        selectedLabelStyle: TextStyle(color: Colors.black,fontSize: 20.0),
        unselectedFontSize: 10.0,
        unselectedIconTheme: IconThemeData(color: Colors.white,size: 15.0),
        unselectedLabelStyle: TextStyle(color: Colors.white,fontSize: 15.0),
        currentIndex: numPage,
        onTap: (value) {
          setState(() {
            numPage = value ;
          });
        },
      ),
      body: screen[numPage],
    );
  }
}
