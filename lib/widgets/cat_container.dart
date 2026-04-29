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

    return Container(
      height: catBoxSizeH,
      width: catBoxSizeW,
      // color: Colors.red,
      padding: EdgeInsets.all(20),
      child: Center(
        child: Stack(
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     border: BoxBorder.all(color: page.whiteCream, width: 5),
            //   ),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(15),
            //     child: Image.asset(clothe.getWallPath, fit: BoxFit.cover),
            //   ),
            // ),
            Center(
              child: Container(
                width: catBoxSizeW * 0.6,
                
                child: Image.asset(
                  'assets/img/interface/cat.png',
                  fit: BoxFit.contain,
                  
                ),
              ),
            ),
            Center(
              child: Container(
                width: catBoxSizeW * 0.6,
                // color: Colors.blue,
                child: Image.asset(
                  clothe.getClothePathBottom,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Center(
              child: Container(
                width: catBoxSizeW * 0.6,
                // color: Colors.blue,
                child: Image.asset(
                  clothe.getClothePathTop,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Center(
              child: Container(
                width: catBoxSizeW * 0.6,
                // color: Colors.green,
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
    );
  }
}
