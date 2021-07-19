import 'package:flutter/material.dart';
import 'package:time_tacking/models/viewModel.dart';

import '../widgets/taskList.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Time Tracking',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(fontSize: 26.0),
        ),
      ),
      body: TaskList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onAddButtonClick(context),
        tooltip: 'Add',
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}