import 'package:get/get.dart';
import 'package:new_starter/controllers/auth_controller.dart';
import 'package:new_starter/controllers/theme_controller.dart';
import 'package:new_starter/services/firebase_storage_services.dart';

class InitialBinging implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.put(AuthController(), permanent: true);
    Get.lazyPut(()=>FirebaseStorageServices());
    }
  }
