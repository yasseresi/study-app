import 'package:flutter/material.dart';
import 'package:study_application/configs/themes/app_colours.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: mainGraidient(context),
        ),
        alignment: Alignment.center ,
        child: Image.asset(
          'assets/images/app_splash_logo.png',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
