import 'package:flutter/material.dart';
import 'package:todoeyflutter/model/task.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

class TaskTiles extends StatefulWidget {
  final List<Task> tasks;

  const TaskTiles({
    Key key,
    this.tasks,
  }) : super(key: key);

  @override
  _TaskTilesState createState() => _TaskTilesState();
}

class _TaskTilesState extends State<TaskTiles> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        return TaskTile(
          text: widget.tasks[i].name,
          isChecked: widget.tasks[i].isDone,
          onChanged: (state) => setState(() => widget.tasks[i].toggleDone()),
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
