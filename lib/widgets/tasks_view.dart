import 'package:flutter/material.dart';
import 'package:todoo/models/task_model.dart';
import 'package:todoo/widgets/task_tile.dart';

class TasksView extends StatefulWidget {
   final List<Task> tasks;
  const TasksView({
    Key? key,required this.tasks
  }) : super(key: key);

  @override
  State<TasksView> createState() => _TasksViewState();
}
 
class _TasksViewState extends State<TasksView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          tileTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          toggleCheckBoxState: (bool? checkBoxState) {
            setState(
              () {
                widget.tasks[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
