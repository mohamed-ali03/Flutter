import 'package:flutter/material.dart';

void main() {
  runApp(Azkar());
}

class Azkar extends StatefulWidget {
  @override
  State<Azkar> createState() {
    return AzkarElsabah();
  }
}


class AzkarElsabah extends State<Azkar> {


  List<int> NumberOfterial =      [2,4,4,4,2,2,4,5,2,8,4,2,2,4,4,4,2,2,4,2,2,4,11,4,4,4,4,2,2,101,101,101];
  List<int> realNumberOfterial =  [1,3,3,3,1,1,3,4,1,7,3,1,1,3,3,3,1,1,3,1,1,3,10,3,3,3,3,1,1,100,100,100];
  Map<int,String> AzkarText = {1:"images/Capture.PNG",
                               2:"images/Capture0.PNG",
                               3:"images/Capture1.PNG",
                               4:"images/Capture2.PNG",
                               5:"images/Capture3.PNG",
                               6:"images/Capture4.PNG",
                               7:"images/Capture5.PNG",
                               8:"images/Capture6.PNG",
                               9:"images/Capture7.PNG",
                               10:"images/Capture8.PNG",
                               11:"images/Capture9.PNG",
                               12:"images/Capture10.PNG",
                               13:"images/Capture11.PNG",
                               14:"images/Capture12.PNG",
                               15:"images/Capture13.PNG",
                               16:"images/Capture14.PNG",
                               17:"images/Capture15.PNG",
                               18:"images/Capture16.PNG",
                               19:"images/Capture17.PNG",
                               20:"images/Capture18.PNG",
                               21:"images/Capture19.PNG",
                               22:"images/Capture20.PNG",
                               23:"images/Capture21.PNG",
                               24:"images/Capture22.PNG",
                               25:"images/Capture23.PNG",
                               26:"images/Capture24.PNG",
                               27:"images/Capture25.PNG",
                               28:"images/Capture26.PNG",
                               29:"images/Capture27.PNG",
                               30:"images/Capture28.PNG",
                               31:"images/Capture29.PNG",
                               32:"images/Capture30.PNG",
                               };

  int counterOfTerial = 0 ;
  int counterAzkerText = 1 ;
  int other= 1; 
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "أذكار الصباح",
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: Colors.blue[300],
          shadowColor: Colors.blue[200],
          elevation: 30,
        ),

      body: Container(
        padding: EdgeInsets.all(10),
        child:Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 100,
                          height: 150,
                          child: Image.asset(AzkarText[counterAzkerText].toString()),
                      ),
                        ),
                    ],
                 ),
                
                
                Container(
                  alignment: Alignment.center,
                  child: Text("$counterOfTerial/$other",style: TextStyle(color: Colors.black),),
                ),
                
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            color: Colors.blue[900],
                            onPressed: (){
                              setState(() {
                                if(counterAzkerText>1)
                                {
                                  counterAzkerText--;
                                  counterOfTerial =0 ;
                                  other = realNumberOfterial[counterAzkerText-1];
                                }
                                else{
                                  counterAzkerText=AzkarText.length;
                                  other = realNumberOfterial[counterAzkerText-1];
                                }
                              });
                            }, 
                            child: Icon(Icons.arrow_back,color: Colors.white,),
                          ),
                        ),
                    
                        Expanded(
                          child: MaterialButton(
                            color: Colors.blue[900],
                            onPressed: (){
                              setState(() {
                                if(counterAzkerText<=AzkarText.length)
                                {
                                  counterOfTerial++;
                                  if (counterOfTerial==NumberOfterial[counterAzkerText-1])
                                  {
                                    counterAzkerText++;
                                    counterOfTerial=0 ;
                                    other = realNumberOfterial[counterAzkerText-1];
                                  }
                                }
                                else
                                {
                                  counterAzkerText=1;
                                  other = realNumberOfterial[counterAzkerText-1];
                                }
                              });
                            }, 
                            child: Icon(Icons.add,color: Colors.white,),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            color: Colors.blue[900],
                            onPressed: (){
                              setState(() {
                                if(counterAzkerText<AzkarText.length)
                                {
                                  counterAzkerText++;
                                  counterOfTerial =0 ;
                                  other = realNumberOfterial[counterAzkerText-1];
                                }
                                else{
                                  counterAzkerText=1;
                                  other = realNumberOfterial[counterAzkerText-1];
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
                              color: Colors.blue[900],
                              onPressed: (){
                                setState(() {
                                    counterAzkerText=1;
                                    counterOfTerial=0 ;
                                    other = realNumberOfterial[counterAzkerText-1];
                                });
                              }, 
                              child: Text("Restart",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                      ],
                    )
                  ],
                ),
                ]
                  ),
          ],
        ),
      ),
    )
    );
  }
}






