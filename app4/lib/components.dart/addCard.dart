import 'package:flutter/material.dart';

class addCard extends StatelessWidget {
  String inputTask = "";
  void Function(String) handle;
  addCard({required this.handle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Add new Task",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.lightBlue, fontSize: 40),
        ),
        TextField(
          autofocus: true,
          onChanged: (val) {
            inputTask = val;
          },
        ),
        ElevatedButton(
            onPressed: () {
              handle(inputTask);
            },
            child: Text("Add"))
      ],
    );
  }
}