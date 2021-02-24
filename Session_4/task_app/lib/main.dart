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
              Expanded(
                child: Box(),
              ),
              Expanded(
                child: Box(),
              ),
              Expanded(
                child: Box(),
              ),
              Expanded(
                child: Box(),
              ),
              Expanded(
                child: Box(),
              ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
      ),
    ),
  );
}

class Box extends StatefulWidget {
  @override
  _BoxState createState() => _BoxState();
}

class _BoxState extends State<Box> {
  bool active = false;
  String task = '';
  final textController = TextEditingController();

  void addTask() {
    setState() {}
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (active == true) {
      return Slidable(
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: 'More',
            color: Colors.black45,
            icon: Icons.more_horiz,
          ),
          IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () => setState(() {
              active = false;
              task = '';
            }),
          ),
        ],
        child: task == ''
            ? Container(
                color: Colors.grey[500],
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: textController,
                      autofocus: false,
                      onEditingComplete: () => setState(() {
                        task = textController.text;
                        textController.clear();
                      }),
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                ),
              )
            : Container(
                color: Colors.grey[500],
                child: Center(
                  child: Text(
                    task,
                  ),
                ),
              ),
      );
    } else {
      return Container(
        alignment: Alignment.center,
        color: Colors.grey[600],
        child: TextButton(
          onPressed: () => setState(() {
            active = true;
          }),
          child: Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.add,
              size: 50.0,
              color: Colors.green[500],
            ),
          ),
        ),
      );
    }
  }
}
