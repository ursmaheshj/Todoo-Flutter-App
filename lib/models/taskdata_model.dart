import 'package:flutter/foundation.dart';
import 'package:todoo/models/task_model.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy Milk'),
    Task(name: 'Buy Brd and eggs'),
    Task(name: 'Buy Bread and eggs'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
