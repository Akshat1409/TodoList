import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];
  void addstring(String newvalue) {
    tasks.add(Task(name: newvalue));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void delete(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
