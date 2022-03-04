import 'package:app4/taskModel.dart';
import 'package:app4/toDoScreen.dart';
import 'package:flutter/material.dart';
import 'package:app4/taskModel.dart';
import 'package:provider/provider.dart';
import '../ToDoList.dart';
import 'drawerCard.dart';


class drawerList extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Consumer<toDoList>(builder: (context, value, child) => Container(
       decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20)
      ),
      child: 
        ListView.builder(itemBuilder: (context, index) => drawerCard(task:value.list[index]),
      itemCount:value.list.length,)
      
    )
    );
  }
}