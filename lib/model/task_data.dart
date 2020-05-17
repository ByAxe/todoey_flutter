import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get count => tasks.length;


  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void toggleTask(int taskIndex) {
    tasks[taskIndex].toggleDone();
    notifyListeners();
  }

}
