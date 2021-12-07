import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  int age = 26;

  incre() {
    age++;
    notifyListeners();
  }

  decre() {
    age--;
    notifyListeners();
  }
}
