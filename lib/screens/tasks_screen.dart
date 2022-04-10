import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoo/models/taskData_model.dart';
import 'package:todoo/models/task_model.dart';
import 'package:todoo/screens/add_task_screen.dart';
import 'package:todoo/widgets/tasks_view.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(
                        addTask: (newTaskTitle) {
                          // setState(() {
                          //   tasks.add(Task(name: newTaskTitle));
                          // },);
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              isScrollControlled: true);
        },
        backgroundColor: Colors.lightBlue,
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    child: Icon(
                      Icons.menu,
                      size: 35.0,
                      color: Colors.lightBlue,
                    ),
                    radius: 30.0,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Todoo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).taskCount} Tasks',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: const TasksView(
                  
                ),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
