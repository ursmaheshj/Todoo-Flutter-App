import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoo/models/taskData_model.dart';
import 'package:todoo/widgets/alert_dialog.dart';
import 'package:todoo/widgets/task_tile.dart';

class TasksView extends StatelessWidget {
  const TasksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              tileTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              toggleCheckBoxState: (bool? checkBoxState) {
                taskData.updateTask(taskData.tasks[index]);
              },
              longPressTask: () {
                showAlertDialogBox(context,taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

