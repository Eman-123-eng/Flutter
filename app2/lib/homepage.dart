import 'productCard.dart';
import 'package:flutter/material.dart';
import 'package:app2/rest.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
 class _HomePageState extends State<HomePage> {
   Product? result;
   var nowrest=restuarant().Menue.map((e) => productCard(current: e)).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 20, 10, 50),
    appBar: AppBar(
      title: Row(children: [Text("Menue")]),
    ),
    body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[ nowrest[0],nowrest[1],nowrest[2],nowrest[3],
        ]
        ,),
    );
  }
   
 }