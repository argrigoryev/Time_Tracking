class Task {
  String title = '';
  int hours = 0;
  int minutes = 0;

  Task({this.title, this.hours, this.minutes});

  void addMinutes(int m) {
    minutes += m;
    hours += minutes ~/ 60;
    minutes = minutes % 60;
  }
  void addHours(int h) => hours += h;
}