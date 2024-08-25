import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_application/configs/themes/sub_theme_data_mixin.dart';

const Color primaryLightColorLight = Color(0xff3ac3cb);
const Color primaryColorLight = Color(0xfff85187);
const Color mainTextColor = Color.fromARGB(255, 40, 40, 40);

class LightTheme with SubThemeDataMixin {
  ThemeData buildingLightTheme() {
    final systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith(
      iconTheme: getIconTheme(),
      textTheme: getTextThemeData().apply(
        bodyColor: mainTextColor,
        displayColor: mainTextColor,
      )
    );
  }
}
