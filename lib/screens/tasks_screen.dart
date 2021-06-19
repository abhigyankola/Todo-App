import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_screen.dart';
import 'package:todo_app/components/list_tile.dart';
import 'package:todo_app/components/tasks_list.dart';
import 'package:todo_app/components/Tasks.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/components/TaskData.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => bottom_screen());
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.list,
                      color: Colors.blueAccent,
                      size: 35,
                    ),
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Text(
                  'Todo',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 50),
                ),
                Text(
                  '  ${Provider.of<TaskData>(context).x.length} Tasks',
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                      fontSize: 20),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              //child: ListView.builder(itemBuilder: ),
              child: TasksList(list: Provider.of<TaskData>(context).x),
            ),
          )
        ],
      ),
    );
  }
}
