import 'package:app4/ToDoList.dart';
import 'package:flutter/material.dart';
import 'package:app4/taskModel.dart';
import 'taskCard.dart';

import 'package:provider/provider.dart';

class listCard extends StatefulWidget {

  @override
  _listCardState createState() => _listCardState();
}

class _listCardState extends State<listCard> {
  @override
  Widget build(BuildContext context) {
    return Consumer<toDoList>(builder: (context, value, child) =>  Container(
      decoration: BoxDecoration(
        color: Colors.white,borderRadius: BorderRadius.circular(20)
      ),
      child: ListView.builder(itemCount: value.count,itemBuilder: (context, index) => taskCard(task: value.list[index], 
      handleChange:(bool? val) {
                      value.toggleTask(value.list[index]);
                    
                  },
      handleLongPress: (){
         value.deleteFromList(value.list[index]);
                  },
    ),
    )
    )
    );

  }
}