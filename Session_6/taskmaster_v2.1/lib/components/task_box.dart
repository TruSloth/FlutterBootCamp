import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:taskmaster/constants.dart';
import 'task_display.dart';
import 'task_add.dart';
import 'taskDetails.dart';

class TaskBox extends StatefulWidget {
  @override
  _TaskBoxState createState() => _TaskBoxState();
}

class _TaskBoxState extends State<TaskBox> {
  String taskTitle = '';
  String taskDescription = '';

  void addTask() {
    _navigateAndReturnResult(context, '/addTask');
  }

  void viewTask(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/viewTask',
      arguments: TaskDetails(
        taskTitle: taskTitle,
        taskDescription: taskDescription,
      ),
    );
  }

  void editTask(BuildContext context) {
    _navigateAndReturnResult(
      context,
      '/editTask',
      TaskDetails(
        taskTitle: taskTitle,
        taskDescription: taskDescription,
      ),
    );
  }

  _navigateAndReturnResult(BuildContext context, String route,
      [TaskDetails arguments]) async {
    final task = await Navigator.pushNamed(
      context,
      route,
      arguments: arguments,
    );

    if (task != null) {
      TaskDetails taskDetails = task;

      setState(() {
        taskTitle = taskDetails.taskTitle ?? '';
        taskDescription = taskDetails.taskDescription ?? '';
      });
    }
  }

  void deleteTask() {
    setState(() {
      taskTitle = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    if (taskTitle == '') {
      return TaskAdd(
        addTask: addTask,
      );
    } else {
      return Expanded(
        child: Padding(
          padding: kTaskBoxMargin,
          child: Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: kSlidableActionExtentRatio,
            child: GestureDetector(
              onTap: () => viewTask(context),
              child: TaskDisplay(
                task: taskTitle,
              ),
            ),
            secondaryActions: [
              IconSlideAction(
                caption: 'Edit',
                color: Theme.of(context).accentColor,
                icon: Icons.mode_edit,
                onTap: () => editTask(context),
              ),
              IconSlideAction(
                caption: 'Delete',
                color: Theme.of(context).errorColor,
                icon: Icons.delete,
                onTap: () => deleteTask(),
              ),
            ],
          ),
        ),
      );
    }
  }
}
