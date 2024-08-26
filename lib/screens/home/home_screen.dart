import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_application/controllers/questions_paper/question_paper_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionPaperController _controller = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
        body: Obx(
      () => ListView.separated(
          itemBuilder: (context, index) {
            return ClipRRect(
              child: SizedBox(
                height: 200,
                width: 200,
                child: FadeInImage(
                  placeholder:
                      const AssetImage('assets/images/app_splash_logo.png'),
                  image: NetworkImage('${_controller.allPaperImages[index]}'),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 20,
            );
          },
          itemCount: _controller.allPaperImages.length),
    ));
  }
}