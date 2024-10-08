import "package:flutter/material.dart";

void main ()
{
  runApp(MyApp());
}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First App")),
        body: ListView(
          children: [
            Card(
              child: Text("hello program",style: TextStyle(fontSize: 25),),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Card(
              child: Text("App for Photos",style: TextStyle(fontSize: 15),),
            ),
            Card(
              child: Image.network("https://th.bing.com/th/id/OIP.YA5KAwjusYKDQgdif49KEwHaE8?pid=ImgDet&w=474&h=316&rs=1"),
            ),
            
            Card(
              child: Image.network("https://doralfamilyjournal.com/wp-content/uploads/2017/01/hello.jpg"),
            ),
            Card(
              child: Image.network("https://th.bing.com/th/id/OIP.pAcu7875Nl6e_M0tBXBzGQHaE5?rs=1&pid=ImgDetMain"),
            ),
            Card(
              child: Image.network("https://th.bing.com/th/id/R.185c28d829075a002278ae19345d2966?rik=xDAhdCN7LeU4fA&pid=ImgRaw&r=0"),
            ),
            Card(
              child: Image.network("https://th.bing.com/th/id/OIP.xLrF6Ee1cxsqrQbUmG5cZgHaE8?pid=ImgDet&w=474&h=316&rs=1"),
            ),
            Card(
              child: Image.asset("images/Avater1.jpg"),
            ),
          ],
        ),
      ),
    );
  }



}