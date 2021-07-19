import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:time_tacking/models/viewModel.dart';

showAddTaskPopup(context) {
  final inputController = TextEditingController();

  Alert(
      context: context,
      title: "Add Task",
      style: AlertStyle(
          animationDuration: Duration(milliseconds: 350),
          titleStyle: Theme.of(context).textTheme.headline6),
      content: Column(
        children: <Widget>[
          TextField(
            controller: inputController,
            decoration: InputDecoration(
              icon: Icon(Icons.edit_attributes_outlined),
              labelText: 'Task title',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () => addTaskWithTitle(context, inputController.text),
          child: Text(
            "Add",
            style: TextStyle(color: getButtonTextColor(context), fontSize: 16),
          ),
        )
      ]).show();
}