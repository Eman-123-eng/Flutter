import 'taskModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class toDoList extends ChangeNotifier{
  List<Task> _tasks=[
    Task(text: "have breakfast"),
  Task(text: "go to gym"),
  Task(text: "finish work")];

  List<Task> get list {
    return _tasks;
  }

  int get count {
    return _tasks.length;
  }

  void AddToList(String val) {
    _tasks.add(Task(text: val));
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggle();
    notifyListeners();
  }

  void deleteFromList(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}