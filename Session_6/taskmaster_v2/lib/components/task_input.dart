import 'package:flutter/material.dart';
import '../constants.dart';

class TaskInput extends StatelessWidget {
  TaskInput({@required this.textController, @required this.expands});

  final TextEditingController textController;
  final bool expands;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: kTaskInputFieldMargin,
        child: TextField(
          controller: textController,
          autofocus: false,
          expands: expands,
          maxLines: expands ? null : 1,
        ),
      ),
    );
  }
}
