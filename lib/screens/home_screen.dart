import 'package:dress_pet/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dress_pet/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final page = Provider.of<PageProvider>(context);
    Color bgColor = page.white;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(child: Column(children: [CatContainer(), ClotheMenu()])),
    );
  }
}
