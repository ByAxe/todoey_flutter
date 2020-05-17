import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get count => _tasks.length;

  UnmodifiableListView<Task> get tasks => UnmodifiableListView<Task>(_tasks);


  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTask(int taskIndex) {
    _tasks[taskIndex].toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

}
