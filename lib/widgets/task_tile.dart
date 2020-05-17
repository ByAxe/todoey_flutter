import 'package:flutter/material.dart';
import 'package:todoeyflutter/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final Function onChanged;
  final String text;

  const TaskTile({
    Key key,
    @required this.text,
    this.isChecked = false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: ListTile(
        title: Text(
          text,
          style: isChecked ? kCompleteTodoTextStyle : kIncompleteTodoTextStyle,
        ),
        leading: Checkbox(
          value: isChecked,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
