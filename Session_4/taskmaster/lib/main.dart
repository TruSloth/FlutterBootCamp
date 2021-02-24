import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Task Master',
          ),
          backgroundColor: Colors.grey[700],
        ),
        backgroundColor: Colors.grey[800],
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
      ),
    ),
  );
}

class TaskBox extends StatefulWidget {
  @override
  _TaskBoxState createState() => _TaskBoxState();
}

class _TaskBoxState extends State<TaskBox> {
  String task = '';
  bool active = false;
  final textController = TextEditingController();

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
          padding: EdgeInsets.symmetric(vertical: 2.5),
          child: Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            child: task == ''
                ? Container(
                    color: Colors.grey[500],
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          controller: textController,
                          autofocus: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                          onEditingComplete: () => updateTask(),
                        ),
                      ),
                    ),
                  )
                : Container(
                    color: Colors.grey,
                    child: Center(
                      child: Text(
                        task,
                      ),
                    ),
                  ),
            secondaryActions: [
              IconSlideAction(
                caption: 'Edit',
                color: Colors.green,
                icon: Icons.mode_edit,
              ),
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
                onTap: () => deleteTask(),
              ),
            ],
          ),
        ),
      );
    } else {
      return Expanded(
        child: Container(
          color: Colors.grey[600],
          margin: EdgeInsets.symmetric(vertical: 2.5),
          child: TextButton(
            onPressed: () => setState(() {
              active = true;
            }),
            child: Icon(
              Icons.add,
              size: 50.0,
              color: Colors.green,
            ),
          ),
        ),
      );
    }
  }
}
