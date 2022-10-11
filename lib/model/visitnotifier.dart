import 'package:flutter/foundation.dart';

class VisitNotifier extends ChangeNotifier {

  int _homeVisitCounter = 1;
  int _settingsVisitCounter = 0;

  void onHomeVisit() {
    _homeVisitCounter++;
    notifyListeners();
  }

  void onSettingsVisit() {
    _settingsVisitCounter++;
    notifyListeners();
  }

  String get homeVisitStatement {
    return 'Home has been visited $_homeVisitCounter times';
  }

  String get settingsVisitStatement {
    return 'Settings has been visited $_settingsVisitCounter times';
  }

}