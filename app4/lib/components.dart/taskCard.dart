import 'package:flutter/material.dart';
import 'package:app4/taskModel.dart';

class taskCard extends StatelessWidget {
  Task task;
  void Function(bool?) handleChange;
  VoidCallback handleLongPress;
  taskCard({required this.task, required this.handleChange, required this.handleLongPress});
 
  //(){} void call back
  //(val){}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.text,
        style: TextStyle(color: task.isDone ? Colors.green : Colors.red),
      ),
      trailing: Checkbox(value: task.isDone, onChanged: handleChange),
    );
  }
}
