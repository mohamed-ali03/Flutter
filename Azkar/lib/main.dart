import "package:flutter/cupertino.dart";
import"package:flutter/material.dart";
import "package:flutter/widgets.dart";
import 'package:flutter/services.dart';
import"data.dart";

void main (){
  // add these lines
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  );
  runApp(Azkar());
}

class Azkar  extends StatefulWidget{
  @override
  State<Azkar> createState() => azkar();
}

class azkar extends State<Azkar> with SingleTickerProviderStateMixin{

  
  TabController? tabcontroller ;
  @override
  void initState() {
    tabcontroller =TabController(length: 3, vsync: this);
    super.initState();
  }
  int countersa=0 ;
  int innercountersa = 0 ;
  int realnumbofterialsa = 1;

  int counterma=0 ;
  int innercounterma = 0 ;
  int realnumbofterialma = 1;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green[400],
              title: Text("Azkar"),
              bottom:  TabBar(
                controller: tabcontroller,
                labelColor: Colors.black,
                labelStyle: TextStyle(fontSize: 20),
                unselectedLabelStyle: TextStyle(fontSize: 10),
                tabs: [
                  Tab(text: "اذكار",),
                  Tab(text: "اذكار الصباح",),
                  Tab(text: "اذكار المساء",)
                ],
                ),
              ),
            body: Container(
              padding: EdgeInsets.all(10),
              child: TabBarView(
                controller: tabcontroller,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      padding: EdgeInsets.all(10),
                      onPressed: () {
                        tabcontroller!.animateTo(1);
                      },
                      child: Container(
                        color: Colors.cyan,
                        child: Text("الذهاب الي اذكار الصباح",style: TextStyle(fontSize: 20),),
                      ),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.all(10),
                      onPressed: () {
                        tabcontroller!.animateTo(2);
                      },
                      child: Container(
                        color: Colors.cyan,
                        child: Text("الذهاب الي اذكار المساء",style: TextStyle(fontSize: 20),)),
                    ),
                  ],
                ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            color: Colors.cyan,
                            height: 250,
                            alignment: Alignment.centerRight,
                            child:Text(AzkarElsabah[countersa],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          ),
                          Text("$innercountersa/$realnumbofterialsa"),
                          Row(
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  color: Colors.cyan[400],
                                  onPressed: (){
                                    setState(() {
                                      if(countersa>0)
                                      {
                                        countersa--;
                                        innercountersa =0 ;
                                        realnumbofterialsa = NumOfTerialOfAzkarElsabah[countersa];
                                      }
                                      else{
                                        countersa=AzkarElsabah.length-1;
                                        realnumbofterialsa = NumOfTerialOfAzkarElsabah[countersa];
                                      }
                                    });
                                  }, 
                                  child: Icon(Icons.arrow_back,color: Colors.white,),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  color: Colors.cyan[400],
                                  onPressed:() {
                                    setState(() {
                                      if(countersa<AzkarElsabah.length)
                                      {
                                        if (innercountersa<NumOfTerialOfAzkarElsabah[countersa]-1)
                                        {
                                          innercountersa++ ;
                                        }
                                        else{
                                          countersa++;
                                          innercountersa=0;
                                          realnumbofterialsa = NumOfTerialOfAzkarElsabah[countersa];
                                        }
                                      }
                                      else {
                                        countersa =0 ;
                                        innercountersa =0;
                                        realnumbofterialsa = NumOfTerialOfAzkarElsabah[countersa];
                                      }
                                    });
                                  },
                                  child:Icon(Icons.add),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  color: Colors.cyan[400],
                                  onPressed: (){
                                    setState(() {
                                      if(countersa<AzkarElsabah.length-1)
                                      {
                                        countersa++;
                                        innercountersa =0 ;
                                        realnumbofterialsa = NumOfTerialOfAzkarElsabah[countersa];
                                      }
                                      else{
                                        countersa=0;
                                        realnumbofterialsa = NumOfTerialOfAzkarElsabah[countersa];
                                      }
                                    });
                                  }, 
                                  child: Icon(Icons.arrow_forward,color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  onPressed: (){
                                    setState(() {
                                      countersa=0;
                                      realnumbofterialsa = NumOfTerialOfAzkarElsabah[countersa];
                                      innercountersa=0;
                                    });
                                  },
                                  child: Text("Begin"),
                                )
                              ),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: (){
                                    setState(() {
                                      countersa=AzkarElsabah.length-1;
                                      realnumbofterialsa = NumOfTerialOfAzkarElsabah[countersa];
                                      innercountersa=0;
                                    });
                                  },
                                  child: Text("End"),
                                )
                              )
                            ],
                          ),
                          MaterialButton(
                            padding: EdgeInsets.all(10),
                            onPressed: () {
                              tabcontroller!.animateTo(0);
                            },
                            child: Container(
                              color: Colors.cyan,
                              child: Text("الذهاب الي اذكار ",style: TextStyle(fontSize: 20),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.cyan,
                        height: 250,
                        alignment: Alignment.centerRight,
                        child:Text(AzkarElmasa[counterma],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      ),
                      Text("$innercounterma/$realnumbofterialma"),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              color: Colors.cyan[400],
                              onPressed: (){
                                setState(() {
                                  if(counterma>0)
                                  {
                                    counterma--;
                                    innercounterma =0 ;
                                    realnumbofterialma = NumOfTerialOfAzkarElmasa[counterma];
                                  }
                                  else{
                                    counterma=AzkarElmasa.length-1;
                                    realnumbofterialma = NumOfTerialOfAzkarElmasa[counterma];
                                  }
                                });
                              }, 
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              color: Colors.cyan[400],
                              onPressed:() {
                                setState(() {
                                  if(counterma<AzkarElmasa.length)
                                  {
                                    if (innercounterma<NumOfTerialOfAzkarElmasa[counterma]-1)
                                    {
                                      innercounterma++ ;
                                    }
                                    else{
                                      counterma++;
                                      innercounterma=0;
                                      realnumbofterialma = NumOfTerialOfAzkarElmasa[counterma];
                                    }
                                  }
                                  else {
                                    counterma =0 ;
                                    innercounterma =0;
                                    realnumbofterialma = NumOfTerialOfAzkarElmasa[counterma];
                                  }
                                });
                              },
                              child:Icon(Icons.add),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              color: Colors.cyan[400],
                              onPressed: (){
                                setState(() {
                                  if(counterma<AzkarElmasa.length-1)
                                  {
                                    counterma++;
                                    innercounterma =0 ;
                                    realnumbofterialma = NumOfTerialOfAzkarElmasa[counterma];
                                  }
                                  else{
                                    counterma=0;
                                    realnumbofterialma = NumOfTerialOfAzkarElmasa[counterma];
                                  }
                                });
                              }, 
                              child: Icon(Icons.arrow_forward,color: Colors.white,),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: (){
                                setState(() {
                                  counterma=0;
                                  realnumbofterialma = NumOfTerialOfAzkarElmasa[counterma];
                                  innercounterma=0;
                                });
                              },
                              child: Text("Begin"),
                            )
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: (){
                                setState(() {
                                  counterma=AzkarElmasa.length-1;
                                  realnumbofterialma = NumOfTerialOfAzkarElmasa[counterma];
                                  innercounterma=0;
                                });
                              },
                              child: Text("End"),
                            )
                          )
                        ],
                      ),
                          MaterialButton(
                            padding: EdgeInsets.all(10),
                            onPressed: () {
                              tabcontroller!.animateTo(0);
                            },
                            child: Container(
                              color: Colors.cyan,
                              child: Text("الذهاب الي اذكار ",style: TextStyle(fontSize: 20),),
                            ),
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      
    );
  }
}
