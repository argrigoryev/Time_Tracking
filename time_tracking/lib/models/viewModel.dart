import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../ui/ads/interstitialAd.dart';

import '../ui/popups/addTask.dart';
import '../ui/popups/confirm.dart';
import '../ui/popups/recordTime.dart';

import './task.dart';
import './dataModel.dart';

VoidCallback updateFunction;

ThemeData getTheme() {
  var brightness = SchedulerBinding.instance.window.platformBrightness;
  if (brightness == Brightness.dark) {
    return ThemeData.dark();
  }
  return ThemeData.light();
}

Color getButtonTextColor(context) {
  if (getTheme() == ThemeData.dark()) {
    return Theme.of(context).primaryColor;
  }
  return Theme.of(context).textTheme.headline6.color;
}

void onAddButtonClick(context) {
  showAddTaskPopup(context);
}

void onTaskClick(context, Task task) {
  showRecordTimePopup(context, task);
}

void onTaskLongPress(context, Task task) {
  showConfirmPopup(context, 'Do you want to delete this task?', task);
}

void addTaskWithTitle(context, String title) {
  Navigator.pop(context);
  addTask(title: title);
}

void onConfirmDeleteButtonClick(context, task) {
  Navigator.pop(context);
  deleteTask(task);
}

void onAddTimeButtonClick({context, Task task, String hours, String minutes}) {
  Navigator.pop(context);
  int h = int.tryParse(hours);
  int m = int.tryParse(minutes);
  addTime(task: task, hours: h, minutes: m);
  // interstitialAd.load();
}

void updateTaskList() => updateFunction();

void tryUpdateTaskList() {
  if (updateFunction != null) {
    updateFunction();
  }
}

void setUpdateFunction(update) => updateFunction = update;