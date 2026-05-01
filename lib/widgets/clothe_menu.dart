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

class MenuOptions extends StatelessWidget {
  const MenuOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final page = Provider.of<PageProvider>(context);

    return Container(
      color: page.whiteCream,
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Top
          MenuItem(activetedId: 0, icon: HugeIcons.strokeRoundedDress05),

          // Bottom
          MenuItem(activetedId: 1, icon: HugeIcons.strokeRoundedJoggerPants),

          // Accessories
          MenuItem(activetedId: 2, icon: HugeIcons.strokeRoundedNecklace),

          // Toys
          MenuItem(activetedId: 3, icon: HugeIcons.strokeRoundedRockingHorse),

          // Wall
          MenuItem(activetedId: 4, icon: HugeIcons.strokeRoundedPaintBucket),

          // Dress
          // MenuItem(activetedId: 5, icon: HugeIcons.strokeRoundedDress04),
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
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder: (child, animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: Container(
          key: ValueKey(isActive(activetedId)),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isActive(activetedId),
            borderRadius: BorderRadius.circular(10),
          ),
          child: HugeIcon(icon: icon, size: 30, color: page.black),
        ),
      ),
    );
  }
}

class MenuContent extends StatelessWidget {
  const MenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    final clothe = Provider.of<ClotheProvider>(context);
    final page = Provider.of<PageProvider>(context);

    Color boxColorAc = page.whiteCream;

    Color colorSelected(int id) {
      switch (clothe.getActivateId) {
        case 0:
          if (id == clothe.getItemSelectedTop) {
            return page.skyBlue;
          } else {
            return page.white;
          }
        case 1:
          if (id == clothe.getItemSelectedBottom) {
            return page.skyBlue;
          } else {
            return page.white;
          }
        case 2:
          if (id == clothe.getItemSelectedAccessories) {
            return page.skyBlue;
          } else {
            return page.white;
          }
        case 3:
          if (id == clothe.getItemSelectedToys) {
            return page.skyBlue;
          } else {
            return page.white;
          }
        case 4:
          if (id == clothe.getItemSelectedWall) {
            return page.skyBlue;
          } else {
            return page.white;
          }
        default:
          return page.white;
      }
    }

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
                clothe.setItemSelected = index;
                clothe.setClothePath = clothe.getClothesSection()[index];
              },
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                transitionBuilder: (child, animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: Container(
                  key: ValueKey(colorSelected(index)),
                  decoration: BoxDecoration(
                    border: Border.all(color: page.black, width: 2),
                    color: colorSelected(index),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      clothe.getClothesSectionMenu()[index],
                      fit: BoxFit.cover,
                    ),
                  ),
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
