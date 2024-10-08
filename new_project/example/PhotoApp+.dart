import"package:flutter/material.dart";

void main ( )
{
  runApp( MyApp());
}


class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _materialApp();

  
}


class _materialApp extends State<MyApp> {


  final List<String> photos = ["https://th.bing.com/th/id/OIP.L4nUSvQ7ZaefejVVEkLG5QHaEp?rs=1&pid=ImgDetMain",
                               "https://th.bing.com/th/id/OIP.ypw9drKiurKwpjVhTMrrbQHaFj?rs=1&pid=ImgDetMain",
                               "https://th.bing.com/th/id/OIP.GbmsSc2YI1K-ezGT_1_zLgHaFj?pid=ImgDet&w=474&h=355&rs=1",
                               "https://th.bing.com/th/id/OIP.aGPnccAzu8mU47JWrYtaoAHaF7?rs=1&pid=ImgDetMain",
                               "https://th.bing.com/th/id/R.77bbc75ee3a87f27300c33ead5d92c1d?rik=XJ8eaDfQRFHonQ&pid=ImgRaw&r=0"];
  int i =0 ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold( 
        floatingActionButton: FloatingActionButton.extended(onPressed: (){
          setState(() {
            i=0 ; 
          });
        },
        label: Icon(Icons.exposure_zero_outlined)),
        appBar: AppBar(title : Text("MyInteractiveApp")),
        body : ListView(
          children: [
            Container(
              width: 50,
              height: 50,
              child: IconButton(onPressed:(){
              setState(() {
                if (i<photos.length-1)
                {
                  i++;
                }
                else {
                  i = 0 ;
                }
              });
            } ,
            icon: Icon(Icons.add),),),
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Image.network(photos[i])
              ),
            Container(
              width: 50,
              height: 50,
              child: IconButton(onPressed:(){
              setState(() {
                if (i>0)
                {
                  i--;
                }
                else 
                {
                  i=photos.length - 1;
                }
              });
            } ,
            icon: Icon(Icons.remove),),),
          ],
          
        ),
      )
    );
  }

}