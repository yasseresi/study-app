import 'package:flutter/material.dart';
import 'package:new_starter/configs/themes/app_dark_theme.dart';
import 'package:new_starter/configs/themes/app_light_theme.dart';
import 'package:new_starter/configs/ui_parameters.dart';


const Color onSurfaceTextColor = Colors.white;

const mainGradientLight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primaryLightColorLight,
      primaryColorLight,
    ]);
const mainGradientDark = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primaryDartColorDark,
      primaryColorDark,
    ]);

LinearGradient mainGraidient(BuildContext context) =>
    UiParameters.isDarkMode(context) ? mainGradientDark : mainGradientLight;
