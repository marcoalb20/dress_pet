import 'package:flutter/cupertino.dart';

class ClotheProvider extends ChangeNotifier {
  int activateId = 0;
  int get getActivateId => activateId;
  set setActivatedId(int active) {
    activateId = active;
    notifyListeners();
  }
}
