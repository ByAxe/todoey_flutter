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
            return TaskTile(
              text: taskData.tasks[i].name,
              isChecked: taskData.tasks[i].isDone,
              onChanged: (isChecked) => Provider.of<TaskData>(
                context,
                listen: false,
              ).toggleTask(i),
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
