import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key, required this.addTask}) : super(key: key);
  final Function(String) addTask;

  @override
  Widget build(BuildContext context) {
    String? taskTitle;
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            cursorHeight: 50.0,
            autofocus: true,
            onChanged: (value) {
              taskTitle = value;
            },
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.lightBlue),
            ),
            onPressed: () {
              
              addTask(taskTitle!);
            },
            child: const Text(
              'Add',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
