import 'package:flutter/material.dart';
import 'package:todoo/models/task_model.dart';
import 'package:todoo/widgets/task_tile.dart';

class TasksView extends StatefulWidget {
  const TasksView({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  List<Task> tasks = [Task(name: 'buy Milk'), Task(name: 'Buy Bread')];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          tileTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          toggleCheckBoxState: (bool? checkBoxState) {
            setState(
              () {
                tasks[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
