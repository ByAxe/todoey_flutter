import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoeyflutter/constants.dart';
import 'package:todoeyflutter/widgets/task_tiles.dart';

class AddTaskScreen extends StatefulWidget {
  final Function onPressedAddTask;

  const AddTaskScreen({
    Key key,
    this.onPressedAddTask,
  }) : super(key: key);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTaskTileText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
        decoration: kSemiRoundedBoxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Task Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter the task name',
              ),
              autofocus: true,
              onChanged: (newText) => setState(() => newTaskTileText = newText),
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              color: kMainColor,
              child: Text(
                'Add task',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () => widget.onPressedAddTask(newTaskTileText),
            ),
          ],
        ),
      ),
    );
  }
}
