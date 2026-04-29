import 'package:dress_pet/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginContentBottom extends StatelessWidget {
  const LoginContentBottom({super.key});

  @override
  Widget build(BuildContext context) {
    double phoneSizeH = MediaQuery.of(context).size.height;
    double phoneSizeW = MediaQuery.of(context).size.width;
    double boxSizeH = phoneSizeH * 0.5;
    double boxSizeW = phoneSizeW * 0.8;

    final page = Provider.of<PageProvider>(context);

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: boxSizeH,
        width: phoneSizeW,
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: boxSizeH,
          width: boxSizeW,
          child: Stack(
            alignment: AlignmentGeometry.bottomRight,
            children: [
              Image.asset(
                'assets/img/interface/login-cat.png',
                fit: BoxFit.contain,
                alignment: AlignmentGeometry.bottomRight,
              ),
              Positioned(
                bottom: boxSizeH * 0.1,
                left: boxSizeW * 0.2,
                child: SizedBox(
                  width: phoneSizeW * 0.18,
                  height: phoneSizeW * 0.18,
                  child: MaterialButton(
                    onPressed: () {
                      page.goToPage(1);
                    },
                    shape: CircleBorder(),
                    splashColor: Color.fromRGBO(193, 153, 147, 0.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
