import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/model/task_data.dart';
import 'package:todoeyflutter/model/task.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

class TaskTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, i) {
            final Task task = taskData.tasks[i];
            return TaskTile(
              text: task.name,
              isChecked: task.isDone,
              onChanged: (isChecked) => Provider.of<TaskData>(
                context,
                listen: false,
              ).toggleTask(i),
              onLongPressCallback: () => taskData.deleteTask(task),
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
