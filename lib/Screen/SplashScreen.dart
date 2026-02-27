import 'package:flutter/material.dart';
import 'dart:async';
import 'package:vaultana/Screen/LoginScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initApp();
  }

  Future<void> _initApp() async{
    await Future.delayed(Duration(seconds: 2)); // Later use logic to check db ,if logged, check api

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context)=> Loginscreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flutter_dash_outlined,size:100,color: Colors.blue),
            SizedBox(height:20),
            Text(
              "Vaultana",
              style: TextStyle(
                color:Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
