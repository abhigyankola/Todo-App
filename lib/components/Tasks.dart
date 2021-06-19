import 'package:flutter/cupertino.dart';

class Tasks {
  String title;
  bool isDone;
  Tasks({this.title, this.isDone});
  void toggle() {
    this.isDone = !this.isDone;
  }
}
