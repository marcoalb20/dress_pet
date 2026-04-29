import 'dart:math';

import 'package:dress_pet/providers/clothe_provider.dart';
import 'package:dress_pet/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hugeicons/hugeicons.dart';

class ClotheMenu extends StatelessWidget {
  const ClotheMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(children: [MenuOptions(), MenuContent()]));
  }
}

class MenuContent extends StatelessWidget {
  const MenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    final clothe = Provider.of<ClotheProvider>(context);
    final page = Provider.of<PageProvider>(context);

    Color boxColorAc = page.whiteCream;

    // Color isSelected(int id) {
    //   if (id == clothe.getItemSelected) {
    //     return page.skyBlue;
    //   } else {
    //     return page.white;
    //   }
    // }

    return Expanded(
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
                  border: Border.all(color: page.black, width: 2),
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
    );
  }
}

class MenuOptions extends StatelessWidget {
  const MenuOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final page = Provider.of<PageProvider>(context);

    return Container(
      // height: 80,
      color: page.whiteCream,
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MenuItem(activetedId: 0, icon: HugeIcons.strokeRoundedDress05),
          // SizedBox(width: 15),
          MenuItem(activetedId: 1, icon: HugeIcons.strokeRoundedJoggerPants),
          // SizedBox(width: 15),
          MenuItem(activetedId: 2, icon: HugeIcons.strokeRoundedDress04),
          // SizedBox(width: 15),
          MenuItem(activetedId: 3, icon: HugeIcons.strokeRoundedNecklace),
          // SizedBox(width: 15),
          MenuItem(activetedId: 4, icon: HugeIcons.strokeRoundedRockingHorse),
          MenuItem(activetedId: 5, icon: HugeIcons.strokeRoundedPaintBucket),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.activetedId, required this.icon});

  final int activetedId;
  final List<List<dynamic>> icon;

  @override
  Widget build(BuildContext context) {
    final clothe = Provider.of<ClotheProvider>(context);
    final page = Provider.of<PageProvider>(context);

    Color boxColorAc = page.white;
    Color boxColorDc = page.whiteCream;

    Color isActive(int id) {
      if (id == clothe.getActivateId) {
        return boxColorAc;
      } else {
        return boxColorDc;
      }
    }

    return InkWell(
      onTap: () {
        clothe.setActivatedId = activetedId;
      },
      child: Container(
        // height: 50,
        // width: 50,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isActive(activetedId),
          borderRadius: BorderRadius.circular(10),
        ),
        child: HugeIcon(icon: icon, size: 30, color: page.black),
      ),
    );
  }
}
