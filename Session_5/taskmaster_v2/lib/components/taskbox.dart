import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../constants.dart';
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

  void deleteTask() {
    setState(() {
      taskTitle = '';
    });
  }

  void addTask() {
    _navigateAndReturnResult(context);
  }

  _navigateAndReturnResult(BuildContext context) async {
    final task = await Navigator.pushNamed(context, '/addTask');

    if (task != null) {
      TaskDetails taskDetails = task;

      setState(() {
        taskTitle = taskDetails.taskTitle == null ? '' : taskDetails.taskTitle;
        taskDescription = taskDetails.taskDescription == null
            ? ''
            : taskDetails.taskDescription;
      });
    }
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
            child: TaskDisplay(
              task: taskTitle,
            ),
            secondaryActions: [
              IconSlideAction(
                caption: 'Edit',
                color: Theme.of(context).accentColor,
                icon: Icons.mode_edit,
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
