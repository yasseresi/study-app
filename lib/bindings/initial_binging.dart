import 'package:get/get.dart';
import 'package:study_application/controllers/auth_controller.dart';
import 'package:study_application/controllers/theme_controller.dart';

class InitialBinging implements Bindings{
  @override
  void dependencies() {
  Get.put(ThemeController());
  Get.put(AuthController(),permanent: true);
    // TODO: implement dependencies
  }

}

 