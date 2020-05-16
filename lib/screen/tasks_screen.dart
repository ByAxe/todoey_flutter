import 'package:flutter/material.dart';
import 'package:todoeyflutter/constants.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlueAccent,
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
                    color: Colors.lightBlueAccent,
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
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    '12 Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  top: 10.0,
                  right: 50.0,
                ),
                child: ListView(
                  children: [
                    TodoItem(text: 'Buy milk', isComplete: false),
                    TodoItem(text: 'Buy eggs', isComplete: false),
                    TodoItem(text: 'Buy bread', isComplete: true),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TodoItem extends StatefulWidget {
  final String text;
  bool isComplete;

  TodoItem({
    Key key,
    @required this.text,
    @required this.isComplete,
  }) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.text,
        style: widget.isComplete
            ? kCompleteTodoTextStyle
            : kIncompleteTodoTextStyle,
      ),
      trailing: Checkbox(
        value: widget.isComplete,
        onChanged: (bool value) => setState(() => widget.isComplete = value),
      ),
    );
  }
}
