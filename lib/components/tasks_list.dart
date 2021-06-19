import 'package:flutter/material.dart';
import 'list_tile.dart';
import 'Tasks.dart';
import 'package:provider/provider.dart';
import 'TaskData.dart';

class TasksList extends StatefulWidget {
  final List<Tasks> list;
  TasksList({this.list});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemBuilder: (context, index) {
            return list_tile(
                LP: () {
                  taskData.del(index);
                },
                title: taskData.x[index].title,
                isChecked: taskData.x[index].isDone,
                checkCB: (check) {
                  taskData.upd(taskData.x[index]);
                });
          },
          itemCount: taskData.x.length);
    });
  }
}
