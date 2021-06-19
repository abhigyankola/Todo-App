import 'package:flutter/material.dart';

// ignore: camel_case_types
class list_tile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkCB;
  final Function LP;
  list_tile({this.title, this.isChecked, this.checkCB, this.LP});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.blueAccent,
        checkColor: Colors.white,
        onChanged: checkCB,
      ),
      onLongPress: LP,
    );
  }
}
