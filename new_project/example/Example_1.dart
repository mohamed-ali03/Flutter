import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("My First App")),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(10)),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.black,
                      ),
                      color: const Color(0xffe4f1fb),
                    ),
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      "Straberry Pavlove",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Colors.grey[700]),
                    )),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.black,
                      ),
                      color: const Color(0xffe4f1fb),
                    ),
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 200,
                    alignment: Alignment.center,
                    child: Text(
                      "Pavlova is meringue-based dessert named after the Russian ballerina anua Pavlova .Pavlova fcalures a erisp erust and soft . light inside ,topped with fruit and whipped cream.",
                      style: TextStyle(fontSize: 20, color: Colors.grey[400]),
                    )),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.black,
                      ),
                      color: const Color(0xffe4f1fb),
                    ),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(child: Icon(Icons.star)),
                            Container(child: Icon(Icons.star)),
                            Container(child: Icon(Icons.star)),
                            Container(child: Icon(Icons.star)),
                            Container(child: Icon(Icons.star)),
                          ],
                        ),
                        Text("170 Reviews")
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.black,
                      ),
                      color: const Color(0xffe4f1fb),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            Container(child: Icon(Icons.save)),
                            Padding(padding: EdgeInsets.all(10)),
                            Text("PREP:"),
                            Padding(padding: EdgeInsets.all(10)),
                            Text("25 min"),
                            Padding(padding: EdgeInsets.all(10)),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            Container(child: Icon(Icons.timer)),
                            Padding(padding: EdgeInsets.all(10)),
                            Text("COOK:",),
                            Padding(padding: EdgeInsets.all(10)),
                            Text("1 hr"),
                            Padding(padding: EdgeInsets.all(10)),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            Container(child: Icon(Icons.food_bank)),
                            Padding(padding: EdgeInsets.all(10)),
                            Text("FEED:"),
                            Padding(padding: EdgeInsets.all(10)),
                            Text("4-6"),
                            Padding(padding: EdgeInsets.all(10)),
                          ],
                        )
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
