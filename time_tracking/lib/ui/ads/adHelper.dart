import 'dart:io';

class AdHelper {
  String getTestAdUnitId() {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/1033173712';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/4411468910';
    }
    return null;
  }

  String getAdUnitId() {
    if (Platform.isAndroid) {
      return 'ca-app-pub-5736477854640852/1812565886';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-5736477854640852/9516290923';
    }
    return null;
  }
}