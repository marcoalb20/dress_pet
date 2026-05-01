import 'package:dress_pet/providers/clothe_provider.dart';
import 'package:dress_pet/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatContainer extends StatelessWidget {
  const CatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final page = Provider.of<PageProvider>(context);
    final clothe = Provider.of<ClotheProvider>(context);

    double phoneSizeH = MediaQuery.of(context).size.height;
    double phoneSizeW = MediaQuery.of(context).size.width;
    double catBoxSizeH = phoneSizeH * 0.4;
    double catBoxSizeW = phoneSizeW;

    return SizedBox(
      height: catBoxSizeH,
      width: catBoxSizeW,
      child: Stack(
        children: [
          Positioned.fill(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              transitionBuilder: (child, animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: SizedBox.expand(
                key: ValueKey(clothe.getWallPath),
                child: Image.asset(clothe.getWallPath, fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Stack(
                children: [
                  Center(
                    child: SizedBox(
                      width: catBoxSizeW * 0.6,
                      child: Image.asset(
                        'assets/img/interface/shadow.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: catBoxSizeW * 0.6,
                      child: Image.asset(
                        'assets/img/interface/cat.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Center(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 400),
                      transitionBuilder: (child, animation) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                      child: SizedBox(
                        key: ValueKey(clothe.getClothePathBottom),
                        width: catBoxSizeW * 0.6,
                        child: Image.asset(
                          clothe.getClothePathBottom,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 400),
                      transitionBuilder: (child, animation) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                      child: SizedBox(
                        key: ValueKey(clothe.getClothePathTop),
                        width: catBoxSizeW * 0.6,
                        child: Image.asset(
                          clothe.getClothePathTop,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 400),
                      transitionBuilder: (child, animation) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                      child: SizedBox(
                        key: ValueKey(clothe.getClothePathAccessories),
                        width: catBoxSizeW * 0.6,
                        child: Image.asset(
                          clothe.getClothePathAccessories,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 400),
                      transitionBuilder: (child, animation) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                      child: SizedBox(
                        key: ValueKey(clothe.getClothePathToys),
                        width: catBoxSizeW * 0.6,
                        child: Image.asset(
                          clothe.getClothePathToys,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: catBoxSizeW * 0.6,
                      child: InkWell(
                        onTap: () {
                          page.goToPage(0);
                        },
                        child: Image.asset(
                          'assets/img/interface/head.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
