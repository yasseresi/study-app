import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_starter/bindings/initial_binging.dart';
import 'package:new_starter/controllers/theme_controller.dart';
import 'package:new_starter/data_upload_screen.dart';

import 'firebase_options.dart';
import 'routes/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  InitialBinging().dependencies();

  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Get.find<ThemeController>().darkTheme,
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes(),
    );
  }
}
