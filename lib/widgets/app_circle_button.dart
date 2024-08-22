

import 'package:flutter/material.dart';

class AppCircleButton extends StatelessWidget {
  const AppCircleButton({super.key, required this.widget, this.color, this.width = 60, required this.onTap});
  final Widget widget;
  final Color? color;
  final double width ;
  final VoidCallback onTap ;

  @override
  Widget build(BuildContext context) {
    return Material(
      //this type to avoid making white circle around the arrow icon 
        type: MaterialType.transparency,
        clipBehavior: Clip.hardEdge,
        shape: CircleBorder(),

        child: InkWell(
          onTap: onTap,
          child: widget,
        ),
    );
  }
}