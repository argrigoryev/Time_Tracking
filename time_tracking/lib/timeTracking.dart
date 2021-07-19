import 'package:flutter/material.dart';

import './models/viewModel.dart';
import 'package:time_tacking/ui/views/home.dart';

class TimeTracking extends StatelessWidget {
  const TimeTracking({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getTheme(),
      home: Home(),
    );
  }
}