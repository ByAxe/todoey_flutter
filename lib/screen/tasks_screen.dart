import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/constants.dart';
import 'package:todoeyflutter/model/shared_state.dart';
import 'package:todoeyflutter/model/task.dart';
import 'package:todoeyflutter/screen/add_task_screen.dart';
import 'package:todoeyflutter/widgets/task_tiles.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(
              onPressedAddTask: (newTaskTitle) {
                setState(
                  () =>
                      Provider.of<SharedState>(context, listen: false).addTask(
                    Task(name: newTaskTitle),
                  ),
                );
                Navigator.pop(context);
              },
            ),
          );
        },
        backgroundColor: kMainColor,
        child: Icon(
          Icons.add,
          size: 40.0,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60.0,
              left: 30.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.format_list_bulleted,
                    size: 40.0,
                    color: kMainColor,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    '${Provider.of<SharedState>(context).tasks.length} Tasks',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              decoration: kSemiRoundedBoxDecoration,
              child: TaskTiles(tasks: Provider.of<SharedState>(context).tasks),
            ),
          )
        ],
      ),
    );
  }
}
