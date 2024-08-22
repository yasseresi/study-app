import 'package:get/get.dart';
import 'package:study_application/bindings/initial_binging.dart';
import 'package:study_application/screens/introduction/introduction.dart';
import 'package:study_application/screens/splash/splash_screen.dart';

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
      ];
}
