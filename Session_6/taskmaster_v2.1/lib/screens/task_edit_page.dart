import 'package:flutter/material.dart';
import '../components/task_input.dart';
import '../components/task_input_button.dart';
import '../components/taskDetails.dart';

class TaskEditPage extends StatefulWidget {
  @override
  _TaskEditPageState createState() => _TaskEditPageState();
}

class _TaskEditPageState extends State<TaskEditPage> {
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
    final TaskDetails taskDetails = ModalRoute.of(context).settings.arguments;

    taskTitleTextController.text = taskDetails.taskTitle;
    taskDescriptionTextController.text = taskDetails.taskDescription;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Task',
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
            taskTitleTextController: taskTitleTextController,
            taskDescriptionTextController: taskDescriptionTextController,
            buttonText: 'Update Task',
          ),
        ],
      ),
    );
  }
}
