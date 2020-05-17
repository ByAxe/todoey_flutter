import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/constants.dart';
import 'package:todoeyflutter/model/task_data.dart';
import 'package:todoeyflutter/model/task.dart';
import 'package:todoeyflutter/screen/add_task_screen.dart';
import 'package:todoeyflutter/widgets/task_tiles.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: kMainColor,
        child: Icon(
          Icons.add,
          size: 40.0,
        ),
      ),
      body: Container(
        decoration: kContainerDecoration,
        child: Column(
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
                      '${Provider.of<TaskData>(context).count} Tasks',
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
                child: TaskTiles(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
