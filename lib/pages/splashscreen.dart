import 'dart:async';

import 'package:coba/pages/intro.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});
  
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => Intro(),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/img/splashscreen.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/logosmk.png",
              width: 200,
              height: 200,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'Problem Student',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "assets/font/Poppins-BoldItalic.ttf",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 1)),
            )
          ],
        ),
      ),
    );
  }
}
