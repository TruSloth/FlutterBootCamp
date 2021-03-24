import 'package:flutter/material.dart';

class TaskDisplay extends StatelessWidget {
  TaskDisplay({@required this.task});

  final String task;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorLight,
      child: Center(
        child: Text(
          task,
        ),
      ),
    );
  }
}
