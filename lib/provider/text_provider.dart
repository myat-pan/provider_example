// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';

class TextProvider extends ChangeNotifier {
  String text = "Hello";

  defaultText() {
    text = "Hello";
    notifyListeners();
  }

  textOne() {
    text = "Flutter";
    notifyListeners();
  }

  textTwo() {
    text = "World";
    notifyListeners();
  }
}
