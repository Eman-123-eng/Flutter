import 'dart:ui';

import 'package:app2/rest.dart';
import 'package:flutter/material.dart';
import 'package:app2/productCard.dart';
import 'package:flutter/src/material/icons.dart';

class OrderPage extends StatefulWidget {
  Product currentprod;
  OrderPage({required this.currentprod});

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    int total =widget.currentprod.price;
    int count=1;
    cal(){

    };
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.currentprod.name),
      ),
      body: Center(child: Card(child:  
      Padding(padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text("Price: ${widget.currentprod.price}",style: TextStyle(color: Colors.black,fontSize: 50),),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [IconButton(
          onPressed:() {
             setState((){
           count--;
          total=widget.currentprod.price*count;
          print(count);
          print(total);
          

        });
          },
          
         icon: Icon(Icons.exposure_minus_1),),
        IconButton(
          onPressed:() {
             setState((){
               count++;
          total=widget.currentprod.price*count;
          print(count);
          print(total);
         
        });
          },
          
         icon: Icon(Icons.plus_one),),
         Text("Quantity:  $count",
         style: TextStyle(fontSize: 20)),
         Text("Price:  $total",
         style: TextStyle(fontSize: 20),),

         ],)
        ],

      ),
      ),
      
      color: Color.fromARGB(255, 219, 170, 187),),
      ),

      );
    
  }
}
