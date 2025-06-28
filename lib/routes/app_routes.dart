import 'package:get/get.dart';
import 'package:new_starter/bindings/initial_binging.dart';
import 'package:new_starter/controllers/questions_paper/question_paper_controller.dart';
import 'package:new_starter/screens/home/home_screen.dart';
import 'package:new_starter/screens/introduction/introduction.dart';
import 'package:new_starter/screens/splash/splash_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(
          name: '/',
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: '/introduction',
          page: () => const AppIntroductionScreen(),
        ),
        GetPage(
          name: '/home',
          page: () => const HomeScreen(),
          binding: BindingsBuilder.put(
            () => QuestionPaperController(),
          ),
        ),
      ];
}
