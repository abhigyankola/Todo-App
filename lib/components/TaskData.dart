import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'Tasks.dart';
//
// class TaskData extends ChangeNotifier {
//   List<Tasks> x = [Tasks(title: 'Hi', isDone: false)];
// }

class TaskData extends ChangeNotifier {
  List<Tasks> x = [];
  void addTask(Tasks a) {
    x.add(a);
    notifyListeners();
  }

  void upd(Tasks a) {
    a.toggle();
    notifyListeners();
  }

  void del(int index) {
    x.removeAt(index);
    notifyListeners();
  }
}
