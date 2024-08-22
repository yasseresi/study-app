

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UiParameters {


  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }
}