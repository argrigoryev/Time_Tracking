import 'package:flutter/material.dart';

import './taskCard.dart';

import '../../models/dataModel.dart';
import '../../models/viewModel.dart';
import '../../models/task.dart';

class TaskList extends StatefulWidget {
  @override
  TaskListState createState() => TaskListState();
}

class TaskListState extends State<TaskList> {
  void update() => setState(() {});

  @override
  Widget build(BuildContext context) {
    setUpdateFunction(update);
    List<Task> tasks = getTaskList();
    return ListView.builder(
      padding: EdgeInsets.only(top: 20, bottom: 30, right: 10, left: 10),
      itemCount: tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskCard(task: tasks[index]);
      },
    );
  }
}