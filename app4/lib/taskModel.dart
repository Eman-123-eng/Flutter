import 'package:flutter/cupertino.dart';

class Task {
  String text;
  bool isDone = false;
  Task({required this.text});
  void toggle() {
    this.isDone = !this.isDone;
}
}
