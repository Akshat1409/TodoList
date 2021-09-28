import 'package:flutter/material.dart';
import 'task_title.dart';
import 'package:to_do_list/models/task.dart';
import 'package:to_do_list/screens/tasks_screens.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallback: (bool checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                print("HEllo");
                taskData.delete(task);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
