import 'package:flutter/material.dart';
import 'package:app4/taskModel.dart';

class drawerCard extends StatelessWidget {
  Task task;
  
  drawerCard({required this.task});
 
  //(){} void call back
  //(val){}

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
    child: Padding( padding:EdgeInsets.all(20.0),child:  Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(
          task.text,style: TextStyle(fontSize: 20,color: Colors.lightBlue),
        ),],),));
      
    
       
     
  }
}
