import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colours.dart';

mixin SubThemeDataMixin {
  TextTheme getTextThemeData() {
    return GoogleFonts.quicksandTextTheme(const TextTheme(
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w400,
        )));
  }

  IconThemeData getIconTheme() {
    return const IconThemeData(size: 16, color: onSurfaceTextColor);
  }
}
