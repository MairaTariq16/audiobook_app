import 'package:audiobook_app/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Uni Neue',
          primaryColor: const Color(0xffF26B6C),
          backgroundColor: Colors.white,
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            headline2: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff4F4F4F)),
            bodyText1: TextStyle(fontSize: 14.0),
            bodyText2: TextStyle(fontSize: 12.0),
          ),
        ),
        // theme: ThemeData(primarySwatch: Colors.pink),

        home: const SplashScreen());
  }
}
