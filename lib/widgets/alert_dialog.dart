import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoo/models/taskData_model.dart';
import 'package:todoo/models/task_model.dart';

showAlertDialogBox(BuildContext context, Task task) {
  // set up the button
  Widget deleteButton = TextButton(
    child: const Text("Delete"),
    onPressed: () {
      Provider.of<TaskData>(context, listen: false).deleteTask(task);
      Navigator.pop(context);
    },
  );

  Widget cancelButton = TextButton(
    child: const Text("Cancel"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Delete this Todo ?"),
    content:  Text(task.name),
    actions: [deleteButton, cancelButton],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
