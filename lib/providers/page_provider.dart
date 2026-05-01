import 'package:flutter/material.dart';

class PageProvider with ChangeNotifier {
  int actualPage = 0;
  int get getActualPage => actualPage;

  Color skyBlue = Color(0xFFCBDCEB);
  Color blue = Color(0xFF6D94C5);
  Color whiteCream = Color(0xFFF5EFE6);
  Color cream = Color(0xFFE8DFCA);
  Color white = Colors.white;
  Color black = Colors.black;

  PageController pageController = PageController(initialPage: 0);

  void goToPage(int page) {
    actualPage = page;
    if (pageController.hasClients) {
      pageController.animateToPage(
        page,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
