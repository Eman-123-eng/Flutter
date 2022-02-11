import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class restuarant{
  List<Product> Menue=[Product(name: "Pizza", price:40, type: type.lunch,img:Icon(Icons.local_pizza)),
  Product(name: "cheeseCake", price:35, type: type.desert,img:Icon(Icons.cake)),
  Product(name: "orange juice", price:40, type: type.drinks,img:Icon(Icons.local_drink)),
  Product(name: "Pancake", price:2, type: type.breakfast,img:Icon(Icons.cake)),
  ];
  int currentQuNum = 0;

  void Increment() {
    if (currentQuNum < Menue.length - 1) {
      currentQuNum++;
    } else {
      currentQuNum = 0;
    }
  }
}


class Product{
  String name;
  var type;
  int price;
  Icon img;
  int quantity=1;


  Product( {required this.name,required this.price,required this.type,required this.img});

}
enum type {appetiser,lunch,breakfast,drinks,desert}
