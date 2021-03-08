import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmaster/constants.dart';
import '../components/task_input.dart';
import '../components/task_input_button.dart';

class TaskInputPage extends StatefulWidget {
  @override
  _TaskInputPageState createState() => _TaskInputPageState();
}

class _TaskInputPageState extends State<TaskInputPage> {
  final taskTitleTextController = TextEditingController();
  final taskDescriptionTextController = TextEditingController();

  @override
  void dispose() {
    taskTitleTextController.dispose();
    taskDescriptionTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add A Task',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TaskInput(
              textController: taskTitleTextController,
              expands: false,
            ),
          ),
          Expanded(
            flex: 4,
            child: TaskInput(
              textController: taskDescriptionTextController,
              expands: true,
            ),
          ),
          InputTaskButton(
            taskTitleText: taskTitleTextController.text,
            taskDescriptionText: taskDescriptionTextController.text,
          ),
        ],
      ),
    );
  }
}
