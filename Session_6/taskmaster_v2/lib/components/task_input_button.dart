import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/taskDetails.dart';

class InputTaskButton extends StatelessWidget {
  InputTaskButton({
    @required this.taskTitleTextController,
    @required this.taskDescriptionTextController,
    @required this.buttonText,
  });

  final TextEditingController taskTitleTextController;
  final TextEditingController taskDescriptionTextController;
  final String buttonText;

  void inputTask(
      BuildContext context, String taskTitle, String taskDescription) {
    Navigator.pop(
      context,
      TaskDetails(
        taskTitle: taskTitle,
        taskDescription: taskDescription,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kAddTaskButtonMargin,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextButton(
        onPressed: () => inputTask(context, taskTitleTextController.text,
            taskDescriptionTextController.text),
        child: Text(
          buttonText,
        ),
      ),
    );
  }
}
