import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  TasksTile(
      {Key? key,
      required this.task,
      required this.checkBoxState,
      required this.toggleCheckBoxState,
      required this.deleteTask})
      : super(key: key);
  String task;
  bool checkBoxState;
  Function toggleCheckBoxState;
  Function deleteTask;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task,
        //TODO: add a strike through when the task is done
        style: TextStyle(decoration: null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkBoxState,
        onChanged: (newValue) {
          toggleCheckBoxState(newValue);
        },
      ),
    );
  }
}
