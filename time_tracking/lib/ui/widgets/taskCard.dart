import 'package:flutter/material.dart';

import '../../models/viewModel.dart';
import '../../models/task.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key key,
    @required this.task,
  }) : super(key: key);

  final Task task;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => onTaskClick(context, task),
        onLongPress: () => onTaskLongPress(context, task),
        trailing: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: Theme.of(context).iconTheme.copyWith(
              color: Colors.grey,
            ),
          ),
          child: Icon(
            Icons.arrow_forward_ios,
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            task.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        subtitle: Text(
          '${task.hours}h ${task.minutes}m',
        ),
      ),
    );
  }
}
