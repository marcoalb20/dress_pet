import 'package:flutter/cupertino.dart';

class ClotheProvider extends ChangeNotifier {
  int activateId = 0;
  int wallSelected = 0;
  int itemSelectedTop = 0;
  int itemSelectedBottom = 0;
  int itemSelectedAccessories = 0;
  int itemSelectedToys = 0;
  String wallPath = 'assets/img/wall/0.png';
  String clothePathTop = 'assets/img/clothe/top/0.png';
  String clothePathBottom = 'assets/img/clothe/bottom/0.png';
  String clothePathAccessories = 'assets/img/clothe/accessories/null.png';
  String clothePathToys = 'assets/img/clothe/toys/null.png';

  double itemPositionBottom = -5;

  // 0 = top,
  final top = [
    'assets/img/clothe/top/0.png',
    'assets/img/clothe/top/1.png',
    'assets/img/clothe/top/2.png',
    'assets/img/clothe/top/3.png',
    'assets/img/clothe/top/4.png',
    'assets/img/clothe/top/5.png',
    'assets/img/clothe/top/6.png',
  ];

  // 1 = bottom
  final bottom = [
    'assets/img/clothe/bottom/0.png',
    'assets/img/clothe/bottom/1.png',
    'assets/img/clothe/bottom/2.png',
    'assets/img/clothe/bottom/3.png',
    'assets/img/clothe/bottom/4.png',
    'assets/img/clothe/bottom/5.png',
  ];

  // 2 = accessories
  final accessories = [
    'assets/img/clothe/accessories/null.png',
    'assets/img/clothe/accessories/0.png',
    'assets/img/clothe/accessories/1.png',
  ];

  // 3 = toys
  final toys = [
    'assets/img/clothe/toys/null.png',
    'assets/img/clothe/toys/0.png',
    'assets/img/clothe/toys/1.png',
    'assets/img/clothe/toys/2.png',
  ];

  // 4 = wall
  final wall = [
    'assets/img/wall/0.png',
    'assets/img/wall/1.png',
    'assets/img/wall/2.png',
    'assets/img/wall/3.png',
    'assets/img/wall/4.png',
  ];

  // 0 = top,
  final topMenu = [
    'assets/img/menu/top/0.png',
    'assets/img/menu/top/1.png',
    'assets/img/menu/top/2.png',
    'assets/img/menu/top/3.png',
    'assets/img/menu/top/4.png',
    'assets/img/menu/top/5.png',
    'assets/img/menu/top/6.png',
  ];

  // 1 = bottom
  final bottomMenu = [
    'assets/img/menu/bottom/0.png',
    'assets/img/menu/bottom/1.png',
    'assets/img/menu/bottom/2.png',
    'assets/img/menu/bottom/3.png',
    'assets/img/menu/bottom/4.png',
    'assets/img/menu/bottom/5.png',
  ];

  // 2 = accessories
  final accessoriesMenu = [
    'assets/img/menu/accessories/null.png',
    'assets/img/menu/accessories/0.png',
    'assets/img/menu/accessories/1.png',
  ];

  // 3 = toys
  final toysMenu = [
    'assets/img/menu/toys/null.png',
    'assets/img/menu/toys/0.png',
    'assets/img/menu/toys/1.png',
    'assets/img/menu/toys/2.png',
  ];

  // 4 = wall
  final wallMenu = [
    'assets/img/menu/wall/0.png',
    'assets/img/menu/wall/1.png',
    'assets/img/menu/wall/2.png',
    'assets/img/menu/wall/3.png',
    'assets/img/menu/wall/4.png',
  ];

  String get getWallPath => wallPath;
  set setWallPath(String newWallPath) {
    wallPath = newWallPath;
    notifyListeners();
  }

  String get getClothePathTop => clothePathTop;
  String get getClothePathBottom => clothePathBottom;
  set setClothePath(String newClothePath) {
    switch (activateId) {
      case 0:
        clothePathTop = newClothePath;
      case 1:
        clothePathBottom = newClothePath;
      case 2:
        clothePathAccessories = newClothePath;
      case 3:
        clothePathToys = newClothePath;
      case 4:
        wallPath = newClothePath;
    }

    notifyListeners();
  }

  String get getClothePathAccessories => clothePathAccessories;
  set setClothePathAccessories(String newClothePath) {
    clothePathAccessories = newClothePath;
    notifyListeners();
  }

  String get getClothePathToys => clothePathToys;
  set setClothePathToys(String newClothePath) {
    clothePathToys = newClothePath;
    notifyListeners();
  }

  int get getActivateId => activateId;
  set setActivatedId(int active) {
    activateId = active;
    notifyListeners();
  }

  int get getItemSelectedTop => itemSelectedTop;
  int get getItemSelectedBottom => itemSelectedBottom;
  int get getItemSelectedAccessories => itemSelectedAccessories;
  int get getItemSelectedToys => itemSelectedToys;
  int get getItemSelectedWall => wallSelected;
  set setItemSelected(int id) {
    switch (activateId) {
      case 0:
        itemSelectedTop = id;
      case 1:
        itemSelectedBottom = id;
      case 2:
        itemSelectedAccessories = id;
      case 3:
        itemSelectedToys = id;
      case 4:
        wallSelected = id;
    }
    notifyListeners();
  }

  List getClothesSection() {
    switch (getActivateId) {
      case 0:
        return top;
      case 1:
        return bottom;
      case 2:
        return accessories;
      case 3:
        return toys;
      case 4:
        return wall;
      default:
        return top;
    }
  }

  List getClothesSectionMenu() {
    switch (getActivateId) {
      case 0:
        return topMenu;
      case 1:
        return bottomMenu;
      case 2:
        return accessoriesMenu;
      case 3:
        return toysMenu;
      case 4:
        return wallMenu;
      default:
        return topMenu;
    }
  }
}
