import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:taskmaster/constants.dart';
import 'task_display.dart';
import 'task_add.dart';

class TaskBox extends StatefulWidget {
  @override
  _TaskBoxState createState() => _TaskBoxState();
}

class _TaskBoxState extends State<TaskBox> {
  String task = '';
  bool active = false;
  final textController = TextEditingController();

  void addTask() {
    Navigator.pushNamed(context, '/addTask');
    // setState(() {
    //   active = true;
    // });
  }

  void updateTask() {
    setState(() {
      task = textController.text;
      textController.clear();
    });
  }

  void deleteTask() {
    setState(() {
      active = false;
      task = '';
    });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (active) {
      return Expanded(
        child: Padding(
          padding: kTaskBoxMargin,
          child: Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: kSlidableActionExtentRatio,
            child: task == ''
                ? Container(
                    color: Theme.of(context).primaryColorLight,
                    child: Center(
                      child: Padding(
                        padding: kTaskInputFieldMargin,
                        child: TextField(
                          controller: textController,
                          autofocus: false,
                          onEditingComplete: () => updateTask(),
                        ),
                      ),
                    ),
                  )
                : TaskDisplay(
                    task: task,
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
    } else {
      return TaskAdd(
        addTask: addTask,
      );
    }
  }
}
