import 'package:flutter/material.dart';
import 'package:study_application/widgets/app_circle_button.dart';
import 'package:get/get.dart';

import '../../configs/themes/app_colours.dart';

class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: mainGraidient(context),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                size: 65,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                style: TextStyle(
                  fontSize: 18,
                  color: onSurfaceTextColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                "This is a study app.You can use it as you want . If you inderstand how it works , you would be able to scale it.With this you will master firebase backend and flutter front End",
              ),
              const SizedBox(
                height: 40,
              ),
              AppCircleButton(
                widget: const Icon(
                  Icons.arrow_forward,
                  size: 35,
                ),
                onTap: () {
                  Get.toNamed('/home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
