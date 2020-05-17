import 'package:flutter/material.dart';
import 'package:todoeyflutter/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final Function onChanged;
  final Function onLongPressCallback;
  final String text;

  const TaskTile({
    Key key,
    @required this.text,
    this.isChecked = false,
    this.onChanged,
    this.onLongPressCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: _buildListTile(),
    );
  }

  ListTile _buildListTile() {
    return ListTile(
      onLongPress: onLongPressCallback,
        title: Text(
          text,
          style: isChecked ? kCompleteTodoTextStyle : kIncompleteTodoTextStyle,
        ),
        leading: Checkbox(
          value: isChecked,
          onChanged: onChanged,
        ),
      );
  }
}
