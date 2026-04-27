import 'package:flutter/material.dart';

class PageProvider with ChangeNotifier {
  int actualPage = 0;
  int get getActualPage => actualPage;

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
