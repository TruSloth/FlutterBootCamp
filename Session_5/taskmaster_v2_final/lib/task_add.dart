import 'package:flutter/material.dart';
import 'constants.dart';

class TaskAdd extends StatelessWidget {
  TaskAdd({@required this.addTask});

  final Function addTask;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Theme.of(context).primaryColor,
        margin: kTaskBoxMargin,
        child: TextButton(
          onPressed: () => addTask(),
          child: Icon(
            Icons.add,
            size: kAddIconSize,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
