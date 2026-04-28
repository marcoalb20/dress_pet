import 'package:dress_pet/providers/clothe_provider.dart';
import 'package:dress_pet/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hugeicons/hugeicons.dart';
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
    final clothe = Provider.of<ClotheProvider>(context);

    Color bgColor = page.skyBlue;
    Color boxColorAc = page.whiteCream;
    Color boxColorDc = page.white;

    Color isActive(int id) {
      if (id == clothe.getActivateId) {
        return boxColorAc;
      } else {
        return boxColorDc;
      }
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: Column(children: [CatContainer(), ClotheMenu()]),
    );
  }
}

class ClotheMenu extends StatelessWidget {
  const ClotheMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final page = Provider.of<PageProvider>(context);
    final clothe = Provider.of<ClotheProvider>(context);

    Color bgColor = page.skyBlue;
    Color boxColorAc = page.whiteCream;
    Color boxColorDc = page.white;

    Color isActive(int id) {
      if (id == clothe.getActivateId) {
        return boxColorAc;
      } else {
        return boxColorDc;
      }
    }

    return Expanded(
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
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: isActive(0),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                    ),
                    child: HugeIcon(icon: HugeIcons.strokeRoundedShirt01),
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
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: isActive(1),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                    ),
                    child: HugeIcon(icon: HugeIcons.strokeRoundedJoggerPants),
                  ),
                ),
                // SizedBox(width: 15),
                // InkWell(
                //   onTap: () {
                //     clothe.setActivatedId = 2;
                //   },
                //   child: Container(
                //     height: 50,
                //     width: 50,
                //     decoration: BoxDecoration(
                //       color: isActive(2),
                //       borderRadius: BorderRadius.vertical(
                //         top: Radius.circular(10),
                //       ),
                //     ),
                //     child: Icon(CupertinoIcons.bolt),
                //   ),
                // ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: boxColorAc,
              padding: EdgeInsets.all(10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      // print(index);
                      // print(clothesSection());
                      clothe.setClothePath = clothe.getClothesSection()[index];
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            left: 0,
                            bottom: clothe.getPosition(),
                            child: Container(
                              // color: Colors.amber,
                              child: Image.asset(
                                clothe.getClothesSection()[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: clothe.getClothesSection().length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
