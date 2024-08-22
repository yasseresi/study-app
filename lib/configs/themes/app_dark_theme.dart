


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_application/configs/themes/sub_theme_data_mixin.dart';

const Color primaryDartColorDark = Color(0xff2e3c62); 
const Color primaryColorDark = Color(0xff99ace1); 
const Color mainTextColorDark = Colors.white;


class DarkTheme with SubThemeDataMixin{
  ThemeData buildingDarkTheme() {
    final systemDarkTheme = ThemeData.dark();
    return systemDarkTheme.copyWith(
     iconTheme: getIconTheme(),
     textTheme: getTextThemeData().apply(
      bodyColor: mainTextColorDark,
      displayColor: mainTextColorDark,
     )
    );
  }
}