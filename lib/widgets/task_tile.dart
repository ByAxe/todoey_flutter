import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoeyflutter/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final Function onChanged;
  final Function onPressRemove;
  final Function onTaskTextChanged;
  final String text;

  const TaskTile({
    Key key,
    @required this.text,
    this.isChecked = false,
    this.onChanged,
    this.onPressRemove,
    this.onTaskTextChanged,
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
      title: TextField(
        controller: TextEditingController(text: text),
        style: isChecked ? kCompleteTodoTextStyle : kIncompleteTodoTextStyle,
        decoration: kTaskInputDecoration,
        onSubmitted: onTaskTextChanged,
      ),
      leading: Checkbox(
        value: isChecked,
        onChanged: onChanged,
      ),
      trailing: isChecked
          ? GestureDetector(
              child: Icon(
                FontAwesomeIcons.trash,
                size: 20.0,
              ),
              onTap: onPressRemove,
            )
          : null,
    );
  }
}
