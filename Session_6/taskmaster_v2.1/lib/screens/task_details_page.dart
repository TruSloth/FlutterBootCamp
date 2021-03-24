import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/task_display.dart';
import '../components/taskDetails.dart';

class TaskDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TaskDetails taskDetails = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task Details',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: kTaskBoxMargin,
              child: TaskDisplay(
                task: taskDetails.taskTitle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: kTaskBoxMargin,
              child: TaskDisplay(
                task: taskDetails.taskDescription,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
