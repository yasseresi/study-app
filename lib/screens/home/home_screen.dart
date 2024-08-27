import 'package:cached_network_image/cached_network_image.dart';
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
                    child: CachedNetworkImage(
                      imageUrl: _controller.allPaper[index].imageUrl,
                      placeholder: (context, url) {
                        return Container(
                          alignment: Alignment.center,
                          child: const CircularProgressIndicator(),
                        );
                      },
                      errorWidget: (context, url, error) =>
                          Image.asset('assets/images/app_splash_logo.png'),
                    ),

                    // child: FadeInImage(
                    //   placeholder:
                    //       const AssetImage('assets/images/app_splash_logo.png'),
                    //   image: NetworkImage('${_controller.allPaperImages[index]}'),
                    // ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 20,
                );
              },
              itemCount: _controller.allPaper.length),
        ));
  }
}
