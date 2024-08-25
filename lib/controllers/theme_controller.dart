



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_application/configs/themes/app_dark_theme.dart';
import 'package:study_application/configs/themes/app_light_theme.dart';

class ThemeController extends GetxController{
  late ThemeData _darkTheme;
  late ThemeData _lightTheme;


  @override
  void onInit() {
    // TODO: implement onInit
    initializeThemeData();
    super.onInit();
  }

  void initializeThemeData(){
    _darkTheme = DarkTheme().buildingDarkTheme();
    _lightTheme = LightTheme().buildingLightTheme();
  }

  ThemeData get darkTheme => _darkTheme;
  ThemeData get lightTheme => _lightTheme;

}
