import 'package:flutter/material.dart';
import 'rest.dart';
import 'screen2.dart';

class productCard extends StatelessWidget{
  Product current;
  productCard({required this.current});

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
     onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => OrderPage(currentprod: current)));},
     child: Card(margin: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
     color: Colors.limeAccent,
     child: Row(children: [Padding(padding: const EdgeInsets.all(8.0),
     child: current.img,),Text("${current.name}"),
    ],),),
   );
  }

 
  
}