import 'package:firstapp/btnavegator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class forgetPassword extends StatefulWidget {
  const forgetPassword({super.key});

  @override
  State<forgetPassword> createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  List forget_status = [' ','you are great','fuck you'];
  int IsForget = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('forget password')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Are you forget your password/email ?(y/n)'),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed:() {
                      IsForget =2 ;
                    },
                    color: Colors.blue,
                    child:Text('Yes'),
                    )
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed:() {
                      IsForget =1 ;
                    },
                    color: Colors.blue,
                    child:Text('No'),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}