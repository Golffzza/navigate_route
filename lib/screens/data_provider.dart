import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  String _message = "No data";

  String get message => _message;

  void setMessage(String newMessage) {
    _message = newMessage;
    notifyListeners();
  }
}
