import 'package:flutter/cupertino.dart';

class ClotheProvider extends ChangeNotifier {
  int activateId = 0;
  // int itemSelectedTop = 0;
  // int itemSelectedBottom = 0;
  String wallPath = 'assets/img/wall/1.png';
  String clothePathTop = 'assets/img/clothe/top/0.png';
  String clothePathBottom = 'assets/img/clothe/bottom/0.png';

  // double itemPositionTop = -5;
  double itemPositionBottom = -5;

  final top = [
    'assets/img/clothe/top/0.png',
    'assets/img/clothe/top/1.png',
    'assets/img/clothe/top/2.png',
    'assets/img/clothe/top/3.png',
    'assets/img/clothe/top/4.png',
    'assets/img/clothe/top/5.png',
    'assets/img/clothe/top/6.png',
  ];

  final bottom = [
    'assets/img/clothe/bottom/0.png',
    'assets/img/clothe/bottom/1.png',
    'assets/img/clothe/bottom/2.png',
    'assets/img/clothe/bottom/3.png',
    'assets/img/clothe/bottom/4.png',
    'assets/img/clothe/bottom/5.png',
  ];

  final wall = [
    'assets/img/wall/0.png',
    'assets/img/wall/1.png',
    'assets/img/wall/2.png',
    'assets/img/wall/3.png',
    'assets/img/wall/4.png',
    'assets/img/wall/5.png',
    'assets/img/wall/6.png',
  ];

  String get getClothePathTop => clothePathTop;
  String get getClothePathBottom => clothePathBottom;

  set setClothePath(String newClothePath) {
    if (activateId == 0) {
      clothePathTop = newClothePath;
    } else {
      clothePathBottom = newClothePath;
    }
    notifyListeners();
  }

  String get getWallPath => wallPath;

  set setWallPath(String newWallPath) {
    wallPath = newWallPath;
    notifyListeners();
  }

  int get getActivateId => activateId;

  set setActivatedId(int active) {
    activateId = active;
    notifyListeners();
  }

  // int get getItemSelectedTop => itemSelectedTop;
  // int get getItemSelectedBottom => itemSelectedBottom;

  // int itemSelected(int selected) {
  //   if (activateId == 0) {
  //     if (itemSelectedTop != 0) {
  //       return itemSelectedTop;
  //     } else {
  //       itemSelectedTop = selected;
  //       return itemSelectedTop;
  //     }
  //   } else {
  //     if (itemSelectedBottom != 0) {
  //       return itemSelectedBottom;
  //     } else {
  //       itemSelectedBottom = selected;
  //       return itemSelectedBottom;
  //     }
  //   }

  //   notifyListeners();
  // }

  // set setItemSelectedBottom(int selected) {
  //   itemSelectedBottom = selected;
  //   notifyListeners();
  // }

  List getClothesSection() {
    if (getActivateId == 0) {
      return top;
    } else {
      return bottom;
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
