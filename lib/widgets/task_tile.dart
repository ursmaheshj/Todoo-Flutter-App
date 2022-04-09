import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.tileTitle,
    required this.isChecked, 
    required this.toggleCheckBoxState,
  }) : super(key: key);

  final String tileTitle;
  final bool isChecked;
  final Function(bool?)? toggleCheckBoxState;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tileTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 20.0,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged:toggleCheckBoxState,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}


class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?)? toggleCheckBoxState;
  const TaskCheckBox(
      {Key? key,
      required this.checkBoxState,
      required this.toggleCheckBoxState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
      activeColor: Colors.lightBlueAccent,
    );
  }
}


// TaskCheckBox(
//         checkBoxState: isChecked,
//         toggleCheckBoxState: 
//         },
//       ),