import 'package:flutter/foundation.dart';

abstract class CustomEvent extends ChangeNotifier {
  void emit() {
    notifyListeners();
  }
}
