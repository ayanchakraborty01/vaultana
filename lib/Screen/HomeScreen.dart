import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:vaultana/constants/constants.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(20.0),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: "logo",
                child: Icon(
                  Icons.flutter_dash_outlined,
                  color: Colors.blue,
                  size: 200,
                ),
              ),

              Text(
                "VAULTANA",
                style: kLogoNameStyle,
              ),

              SizedBox(height: 24.0,),

              SlideAction(
                text: "Lets Get Started...",
                textStyle: kButtonTextStyle,
                outerColor: Colors.blue,
                submittedIcon: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ) ,
                sliderButtonIcon: Icon(
                  Icons.arrow_circle_right,
                  color: Colors.blue,
                ),
                onSubmit: () async{
                  await Future.delayed(Duration(seconds: 5));
                  Navigator.pushNamed(context, 'LoginScreen');
                },
              )
            ],
          )

        ),
      ),
    );
  }
}

