import 'package:flutter/cupertino.dart';

class Radiobuttonprovider extends ChangeNotifier {
  String radioButtonValue = '';

  void selectedButten(String? val) {
    if (val != null) {
      radioButtonValue = val;
      notifyListeners();
    }
  }
}
