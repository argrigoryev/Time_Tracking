import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './task.dart';
import './viewModel.dart';

List<Task> _plug = <Task>[
  Task(title: 'SIC Chrome', hours: 20, minutes: 10),
  Task(title: 'SIC Mac', hours: 50, minutes: 30),
  Task(title: 'SIC iOS', hours: 10, minutes: 5),
  Task(title: 'SIC Android', hours: 30, minutes: 15),
  Task(title: 'SIC TV', hours: 2, minutes: 1),
  Task(title: 'SIC Windows', hours: 11, minutes: 22),
  Task(title: 'SIC Android', hours: 70, minutes: 40),
  Task(title: 'SIC Safari', hours: 20, minutes: 10),
  Task(title: 'SIC Testing', hours: 40, minutes: 30)
];

List<Task> _tasks;

List<Task> getTaskList() {
  if (_tasks == null) loadData();
  return _tasks;
}

void loadData() async {
  // FIXME: testing plug
  // _tasks = _plug;
  _tasks = <Task>[];
  final prefs = await SharedPreferences.getInstance();
  int tasksLength = prefs.getInt('tasks_length') ?? 0;
  for (int i = 0; i < tasksLength; i++) {
    Task task = Task(title: prefs.getString('title$i'),
                      hours: prefs.getInt('hours$i'),
                      minutes: prefs.getInt('minutes$i'));
    _tasks.add(task);
  }
  tryUpdateTaskList();
}

void updateData() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setInt('tasks_length', _tasks.length);
  for (int i = 0; i < _tasks.length; i++) {
    prefs.setString('title$i', _tasks[i].title);
    prefs.setInt('hours$i', _tasks[i].hours);
    prefs.setInt('minutes$i', _tasks[i].minutes);
  }
}

void deleteTask(Task task) {
  _tasks.remove(task);
  updateData();
  updateTaskList();
}

void addTask({String title, int hours = 0, int minutes = 0}) {
  _tasks.add(Task(title: title, hours: hours, minutes: minutes));
  updateData();
  updateTaskList();
}

void addTime({Task task, int hours, int minutes}) {
  int index = _tasks.indexOf(task);
  _tasks[index].addHours(hours ?? 0);
  _tasks[index].addMinutes(minutes ?? 0);
  updateData();
  updateTaskList();
}