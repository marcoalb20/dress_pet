import 'dart:math';

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class LoginContentTop extends StatelessWidget {
  const LoginContentTop({super.key});

  String bodyMessage() {
    List messages = [
      'Dongie te está esperando con su guardarropa vacío... ¡necesita tu ayuda para lucir increíble hoy!',
      'Tu gatito favorito está listo para un nuevo look. ¿Qué outfit le pondrás hoy a Dongie?',
      'Dongie se despertó hoy sin saber qué ponerse... ¡y solo tú puedes salvarlo! Ayúdale a elegir el outfit perfecto.',
    ];

    var num = Random().nextInt(messages.length);

    return messages[num];
  }

  @override
  Widget build(BuildContext context) {
    double phoneSizeH = MediaQuery.of(context).size.height;
    double phoneSizeW = MediaQuery.of(context).size.width;
    double boxSizeH = phoneSizeH * 0.5;
    double boxSizeW = phoneSizeW * 0.8;

    Color titleColor = Color(0xFF6D94C5);
    Color bodyColor = Colors.black;
    Color actionColor = Color(0xFFF5EFE6);

    TextStyle styleTitle = TextStyle(
      color: titleColor,
      fontSize: 10000,
      height: 1.0,
      fontWeight: FontWeight.w800,
      fontFamily: 'Figtree',
    );

    TextStyle styleBody = TextStyle(
      color: bodyColor,
      fontSize: 10000,
      height: 1.0,
      fontFamily: 'Figtree',
    );

    TextStyle styleAction = TextStyle(
      color: Colors.black,
      fontSize: 10000,
      height: 1.0,
      fontFamily: 'Figtree',
    );

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SizedBox(
        height: boxSizeH,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: boxSizeH * 0.3,
              width: boxSizeW,
              child: Center(
                child: AutoSizeText(
                  'Hola Gerald!',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: styleTitle,
                ),
              ),
            ),
            Container(
              height: boxSizeH * 0.3,
              padding: EdgeInsets.all(10),
              width: boxSizeW,
              child: Center(
                child: AutoSizeText(
                  bodyMessage(),
                  textAlign: TextAlign.center,
                  style: styleBody,
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: boxSizeH * 0.2,
              width: double.infinity,
              child: Center(
                child: Container(
                  width: boxSizeW,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: actionColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: AutoSizeText(
                      'Presiona su patita para comenzar',
                      textAlign: TextAlign.center,
                      style: styleAction,
                      maxLines: 2,
                    ),
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
