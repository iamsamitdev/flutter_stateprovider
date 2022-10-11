// ignore_for_file: unnecessary_getters_setters

import 'package:flutter/foundation.dart';

class AppModel extends ChangeNotifier {

  String _text1 = 'Text 1';

  String get text1 => _text1;

  set text1(String text1) {
    _text1 = text1;
    notifyListeners();
  }
  
  String _text2 = 'Text 2';

  String get text2 => _text2;

  set text2(String text2) {
    _text2 = text2;
    notifyListeners();
  }

}