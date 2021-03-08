import 'package:flutter/material.dart';
import '../constants.dart';
import 'taskDetails.dart';

class InputTaskButton extends StatelessWidget {
  InputTaskButton({
    @required this.taskTitleText,
    @required this.taskDescriptionText,
  });

  final String taskTitleText;
  final String taskDescriptionText;

  void inputTask() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kAddTaskButtonMargin,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.pop(
            context,
            TaskDetails(
              taskTitle: taskTitleText,
              taskDescription: taskDescriptionText,
            ),
          );
        },
        child: Text(
          'Add Task',
        ),
      ),
    );
  }
}
