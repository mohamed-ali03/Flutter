import 'package:flutter/material.dart';
import 'package:firstapp/data.dart';
import 'package:firstapp/addItem.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electro Shop'),
        backgroundColor: Colors.blue,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>addItem_()));
            },
            child: Icon(Icons.add,color: Colors.white,),
          )
        ], 
        
      ),
      drawer: Drawer(),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'Offers',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              trailing: MaterialButton(
                onPressed: (){

                },
                child: Text(
                'view all',
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                )
              ),
            ),

            Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  offers('assests/R.jpeg','ESP32','540 EGP','50%'),
                  offers('assests/R3.jpeg','arduino uno','430 EGP','20%'), 
                  offers('assests/R.jpeg','ESP32','540 EGP','60%'),
                  offers('assests/R3.jpeg','arduino uno','430 EGP','45%'), 
                ],
              ),
            ),

            


          ],
        ),
      ),
    );
  }




  offers (String photo,String name,String price,String sale){
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 250.0,
      height: 400.0,
      child :Column(
        children:[
          Container(
            width: 200,
            height: 100.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(photo),
                fit: BoxFit.contain,
                )
            ),
            alignment: Alignment.centerLeft,
            child: DecoratedBox(
              decoration:BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)
                ),
                color: Colors.red,
              ),
              child: Text(sale,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              ),
          ),
        ListTile(
          title: Text(name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          subtitle: Text(price,style: TextStyle(color: Colors.red),),
          trailing: MaterialButton(
            onPressed: (){

            },
            child: Icon(Icons.shopping_bag),
          ),
        )
        ] ,
      )
    );
  }

  




}
