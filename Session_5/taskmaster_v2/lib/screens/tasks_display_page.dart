import 'package:flutter/material.dart';
import '../components/taskbox.dart';

class TaskDisplayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task Master',
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TaskBox(),
            TaskBox(),
            TaskBox(),
            TaskBox(),
            TaskBox(),
          ],
        ),
      ),
    );
  }
}
