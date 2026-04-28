import 'package:dress_pet/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dress_pet/screens/screens.dart';

class ScreenController extends StatelessWidget {
  const ScreenController({super.key});

  @override
  Widget build(BuildContext context) {
    final page = Provider.of<PageProvider>(context);
    Color bgColor = page.skyBlue;

    return Scaffold(
      backgroundColor: bgColor,
      body: PageView(
        controller: page.pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [LoginScreen(), HomeScreen()],
      ),
    );
  }
}
