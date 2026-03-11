import 'package:flutter/material.dart';
import 'package:vaultana/Screen/SplashScreen.dart';
import 'package:vaultana/Screen/HomeScreen.dart';
import 'package:vaultana/Screen/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
      routes: <String , WidgetBuilder>{
        'HomeScreen': (BuildContext context) => Homescreen(),
        'LoginScreen': (BuildContext context)=>Loginscreen()
      }
    );
  }
}
