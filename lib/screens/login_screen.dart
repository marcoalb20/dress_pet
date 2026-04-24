import 'dart:math';

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double phoneSizeH = MediaQuery.of(context).size.height;
    double boxSizeH = phoneSizeH * 0.5;
    double phoneSizeW = MediaQuery.of(context).size.width;

    TextStyle styleTitle = TextStyle(
      color: Color(0xFFB9F3FC),
      fontSize: 10000,
      height: 1.0,
      fontWeight: FontWeight.bold,
    );

    TextStyle styleBody = TextStyle(
      color: Colors.black,
      fontSize: 10000,
      height: 1.0,
    );

    TextStyle styleAction = TextStyle(
      color: Colors.black,
      fontSize: 10000,
      height: 1.0,
    );

    String bodyMessage() {
      var num = Random().nextInt(2);
      List messages = [
        'Dongie te está esperando con su guardarropa vacío... ¡necesita tu ayuda para lucir increíble hoy!',
        'Tu gatito favorito está listo para un nuevo look. ¿Qué outfit le pondrás hoy a Dongie?',
        'Dongie se despertó hoy sin saber qué ponerse... ¡y solo tú puedes salvarlo! Ayúdale a elegir el outfit perfecto.',
      ];

      return messages[num];
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: boxSizeH,
              width: double.infinity,
              color: Color(0xFF93C6E7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: boxSizeH * 0.25,
                    padding: EdgeInsets.all(25),
                    width: double.infinity,
                    child: AutoSizeText(
                      'Hola Gerald!',
                      // maxLines: 1,
                      textAlign: TextAlign.center,
                      style: styleTitle,
                    ),
                  ),
                  Container(
                    height: boxSizeH * 0.3,
                    padding: EdgeInsets.all(25),
                    width: double.infinity,
                    child: AutoSizeText(
                      bodyMessage(),
                      textAlign: TextAlign.center,
                      style: styleBody,
                    ),
                  ),
                  Container(
                    height: boxSizeH * 0.2,
                    padding: EdgeInsets.all(25),
                    width: double.infinity,
                    child: Center(
                      child: Container(
                        height: boxSizeH * 0.1,
                        width: boxSizeH * 0.8,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFFEDEFF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: AutoSizeText(
                            'Presiona su patita para comenzar',
                            textAlign: TextAlign.center,
                            style: styleAction,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: boxSizeH,
              width: phoneSizeW,
              color: Color(0xFF93C6E7),
              // color: Color.fromARGB(255, 73, 89, 100),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/img/interfaces/login-cat.png',
                    fit: BoxFit.contain,
                    alignment: AlignmentGeometry.centerRight,
                  ),
                  Positioned(
                    // right: 0,
                    // left: 0,
                    // bottom: 0,
                    child: Container(
                      height: 50,
                      width: 50,
                      child: MaterialButton(onPressed: () {}),
                      // color: Colors.red,
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
