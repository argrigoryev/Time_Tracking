import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:time_tacking/models/viewModel.dart';

import '../../models/task.dart';

showRecordTimePopup(context, Task task) {
  final hoursInputController = TextEditingController();
  final minutesInputController = TextEditingController();

  Alert(
      context: context,
      title: "Time",
      style: AlertStyle(
          animationDuration: Duration(milliseconds: 350),
          titleStyle: Theme.of(context).textTheme.headline6),
      content: Column(
        children: <Widget>[
          TextField(
            controller: hoursInputController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Icons.watch_later_outlined),
              labelText: 'Hours',

            ),
          ),
          TextField(
            controller: minutesInputController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Icons.watch_later_outlined),
              labelText: 'Minutes',
            ),
          )
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () => onAddTimeButtonClick(context: context, task: task, hours: hoursInputController.text, minutes: minutesInputController.text),
          child: Text(
            "Add",
            style: TextStyle(color: getButtonTextColor(context), fontSize: 16),
          ),
        )
      ]).show();
}