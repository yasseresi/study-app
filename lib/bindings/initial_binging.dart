import 'package:get/get.dart';
import 'package:study_application/controllers/auth_controller.dart';

class InitialBinging implements Bindings{
  @override
  void dependencies() {
  Get.put(AuthController(),permanent: true);
    // TODO: implement dependencies
  }

}

 