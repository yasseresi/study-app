import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:study_application/bindings/initial_binging.dart';
import 'package:study_application/configs/themes/app_light_theme.dart';




import 'routes/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
    theme: LightTheme().buildingTheme(),
    debugShowCheckedModeBanner: false, 
    // home: const AppIntroductionScreen(), 
    getPages: AppRoutes.routes(),
   );  
  }
}
