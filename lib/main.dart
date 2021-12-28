// @dart=2.9
import 'package:flutter/material.dart';
import 'package:project/SplashPage.dart';
import 'package:project/home.dart';
import 'package:project/protect2.dart';
import 'package:project/snake/Snake1.dart';
import 'package:project/snake/Snake2.dart';
import 'package:project/snake/Snake3.dart';
import 'package:project/snake/Snake4.dart';
import 'package:project/snake/Snake5.dart';
import 'package:project/snake/Snake6.dart';
import 'package:project/snake/Snake7.dart';
import 'package:project/snake/Snake8.dart';
import 'package:project/snake/Snake9.dart';
import 'package:project/snake/Snake10.dart';
import 'package:project/snake/Snake11.dart';
import 'package:project/snake/Snake12.dart';
import 'heal2.dart';
import 'launcher.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

// ส่วนของ Stateless widget
class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: 'ThaiSansNeue-Regular',
        primaryColor: Colors.orange[200],
        accentColor: Colors.orange[200],
        textTheme: TextTheme(body1: TextStyle(color: Colors.black)),
      ),
      title: 'First Flutter App',
      initialRoute: '/', // สามารถใช้ home แทนได้
      routes: {
        Launcher.routeName: (context) => Launcher(),
        // ignore: equal_keys_in_map
        '/': (context) => SplashPage(),
        '/home': (context) => Home(),
        '/Snake1': (context) => Snake1(),
        '/Snake2': (context) => Snake2(),
        '/Snake3': (context) => Snake3(),
        '/Snake4': (context) => Snake4(),
        '/Snake5': (context) => Snake5(),
        '/Snake6': (context) => Snake6(),
        '/Snake7': (context) => Snake7(),
        '/Snake8': (context) => Snake8(),
        '/Snake9': (context) => Snake9(),
        '/Snake10': (context) => Snake10(),
        '/Snake11': (context) => Snake11(),
        '/Snake12': (context) => Snake12(),
        '/Heal': (context) => Heal(),
        '/Protect': (context) => Protect(),
      },
    );
  }
}
