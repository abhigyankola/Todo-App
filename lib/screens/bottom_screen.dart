import 'package:flutter/material.dart';
import 'package:todo_app/components/TaskData.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/components/Tasks.dart';

class bottom_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String task;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                'ADD TASK',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w900,
                    fontSize: 37),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  task = value;
                },
              ),
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(Tasks(title: task, isDone: false));
                Navigator.pop(context);
              },
              color: Colors.blueAccent,
              child: Text(
                'ADD',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
              ),
            )
          ],
        ),
      ),
    );
  }
}
