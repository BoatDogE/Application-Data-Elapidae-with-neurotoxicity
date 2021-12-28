import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'package:project/launcher.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      text: 'งูพิษต่อระบบประสาท',
      home: Launcher(),
      duration: 3000,
      imageSize: 200,
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      imageSrc: "assets/images/iconnic.png",
      backgroundColor: Colors.orange[50],
    );
  }
}
