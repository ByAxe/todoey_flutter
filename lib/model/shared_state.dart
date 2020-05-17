import 'package:flutter/material.dart';
import 'package:todoeyflutter/model/task.dart';

class SharedState extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }
}
