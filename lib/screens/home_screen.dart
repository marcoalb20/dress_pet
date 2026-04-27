import 'package:dress_pet/providers/clothe_provider.dart';
import 'package:dress_pet/providers/page_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final page = Provider.of<PageProvider>(context);
    final clothe = Provider.of<ClotheProvider>(context);

    Color bgColor = Color(0xFFCBDCEB);
    Color boxColor = Color(0xFFF5EFE6);

    int _selectedCategory = 0;

    double phoneSizeH = MediaQuery.of(context).size.height;
    double phoneSizeW = MediaQuery.of(context).size.width;
    double catBoxSizeH = phoneSizeH * 0.4;
    double catBoxSizeW = phoneSizeW;

    final categories = [
      {'icon': 'assets/icons/shirt.png', 'items': []},
      {'icon': 'assets/icons/pants.png', 'items': []},
      {'icon': 'assets/icons/hat.png', 'items': []},
    ];

    Color isActive(int id) {
      if (id == clothe.getActivateId) {
        return boxColor;
      } else {
        return Colors.white;
      }
    } 

    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Container(
            height: catBoxSizeH,
            width: catBoxSizeW,

            // padding: EdgeInsets.all(30),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: catBoxSizeH,
                    width: catBoxSizeW * 0.6,

                    // color: Colors.red,
                    padding: EdgeInsets.only(right: 8),
                    child: Image.asset('assets/img/interfaces/2.png'),
                  ),
                ),
                Center(
                  child: Container(
                    // color: Colors.red,
                    height: catBoxSizeH,
                    width: catBoxSizeW * 0.3,
                    padding: EdgeInsets.only(top: 70),
                    child: Image.asset('assets/img/clothes/shirt/camisa.png'),
                  ),
                ),
                Center(
                  child: Container(
                    height: catBoxSizeH,
                    width: catBoxSizeW * 0.4,
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: 35),
                    child: InkWell(
                      onTap: () {
                        page.goToPage(0);
                      },
                      child: Image.asset('assets/img/interfaces/head.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 50,
                  // color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          clothe.setActivatedId = 0;
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: isActive(0),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),
                            ),
                          ),
                          child: Icon(CupertinoIcons.bandage),
                        ),
                      ),
                      SizedBox(width: 15),
                      InkWell(
                        onTap: () {
                          clothe.setActivatedId = 1;
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: isActive(1),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),
                            ),
                          ),
                          child: Icon(CupertinoIcons.ant),
                        ),
                      ),
                      SizedBox(width: 15),
                      InkWell(
                        onTap: () {
                          clothe.setActivatedId = 2;
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: isActive(2),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),
                            ),
                          ),
                          child: Icon(CupertinoIcons.bolt),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: boxColor,
                    padding: EdgeInsets.all(10),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1.0,
                          ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/img/clothes/shirt/camisa.png',
                            ),
                          ),
                        );
                      },
                      itemCount: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
