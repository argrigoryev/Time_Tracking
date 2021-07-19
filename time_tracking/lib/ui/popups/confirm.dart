import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:time_tacking/models/viewModel.dart';

import '../../models/task.dart';

showConfirmPopup(context, String text, Task task) {
  Alert(
      context: context,
      title: text,
      style: AlertStyle(
          animationDuration: Duration(milliseconds: 350),
          titleStyle: Theme.of(context).textTheme.headline6),
      buttons: [
        DialogButton(
          onPressed: () => onConfirmDeleteButtonClick(context, task),
          child: Text(
            "Yes",
            style: TextStyle(color: getButtonTextColor(context), fontSize: 16),
          ),
        ),
        DialogButton(
          color: Theme.of(context).buttonColor,
          onPressed: () => Navigator.pop(context),
          child: Text(
            "No",
            style: TextStyle(color: getButtonTextColor(context), fontSize: 16),
          ),
        )
      ]).show();
}