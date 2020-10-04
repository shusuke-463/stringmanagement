import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String mainText = '新規追加';

  void changeMainText() {
    mainText = '新規追加!!!!';
    notifyListeners();
  }
}