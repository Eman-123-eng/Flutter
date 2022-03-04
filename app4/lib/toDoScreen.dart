import 'package:app4/components.dart/listCard.dart';
import 'package:app4/taskModel.dart';
import 'package:flutter/material.dart';
import 'ToDoList.dart';
import 'components.dart/drawerList.dart';
import 'package:provider/provider.dart';
import 'components.dart/addCard.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class toDoScreen extends StatefulWidget {
  const toDoScreen({ Key? key }) : super(key: key);

  @override
  _toDoScreenState createState() => _toDoScreenState();
}

class _toDoScreenState extends State<toDoScreen> with SingleTickerProviderStateMixin{
  AnimationController? controller;
  List<Color> colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.white
];

TextStyle colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontFamily: 'Horizon',
);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=  AnimationController(vsync: this,duration:Duration(seconds:5),lowerBound: 10,upperBound: 40);
    controller?.forward();

  }
  @override
  Widget build(BuildContext context) {
    return Consumer<toDoList>(
      builder:(context, value, child) =>  Scaffold(
        backgroundColor: Colors.lightBlue,
        drawer: Drawer(backgroundColor: Colors.lightBlue,
          child: drawerList()
        ),
        body: Padding(padding: EdgeInsets.all(40),child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.list,size: controller?.value,),radius: controller?.value,),
            Padding(padding: EdgeInsets.only(top: 15,bottom: 40),
            child:Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround
            ,children: [AnimatedTextKit(
              animatedTexts:[
                ColorizeAnimatedText("To Do List",textStyle: colorizeTextStyle,
          colors: colorizeColors,speed: Duration(milliseconds: 300))]
              ,isRepeatingAnimation: true,)
             ,
              Text("${Provider.of<toDoList>(context).count}+ tasks",
              style: TextStyle(fontSize: 25, color: Colors.white),)
            ]
            ),
            ),
            Expanded(child: listCard(),
            )
          ],
        ),
    
        ),
        
        floatingActionButton: FloatingActionButton(
          onPressed:(){
             showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return addCard(handle: (String val) {
                    setState(() {
                      value.AddToList(val);
                    });
                    print("add");
                    Navigator.pop(context);
                  });
                });
          },
          child: Icon(Icons.add),
         ),
       
      ),
    );
  }
}