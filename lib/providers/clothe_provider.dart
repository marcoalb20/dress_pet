import 'package:flutter/cupertino.dart';

class ClotheProvider extends ChangeNotifier {
  int activateId = 0;
  String clothePathTop = 'assets/img/clothes/shirt/0.png';
  String clothePathBottom = 'assets/img/clothes/pants/0.png';

  // double itemPositionTop = -5;
  double itemPositionBottom = -5;

  final pants = [
    'assets/img/clothes/pants/0.png',
    'assets/img/clothes/pants/1.png',
    'assets/img/clothes/pants/2.png',
    'assets/img/clothes/pants/3.png',
  ];

  final shirt = [
    'assets/img/clothes/shirt/0.png',
    'assets/img/clothes/shirt/1.png',
    'assets/img/clothes/shirt/2.png',
  ];

  int get getActivateId => activateId;

  set setActivatedId(int active) {
    activateId = active;
    notifyListeners();
  }

  String get getClothePathTop => clothePathTop;
  String get getClothePathBottom => clothePathBottom;

  set setClothePath(String newClothePath) {
    if (newClothePath.contains('shirt')) {
      clothePathTop = newClothePath;
    } else {
      clothePathBottom = newClothePath;
    }
    notifyListeners();
  }

  List getClothesSection() {
    if (getActivateId == 0) {
      return shirt;
    } else {
      return pants;
    }
  }

  double getPosition() {
    // return itemPositionBottom;
    if (getActivateId == 0) {
      return -8;
    } else {
      return 8;
    }
  }
}
