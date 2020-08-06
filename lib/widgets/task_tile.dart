import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final int index;
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        Provider.of<TaskData>(context, listen: false).removeTask(index);
      },
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
