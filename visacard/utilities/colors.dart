
import 'package:flutter/material.dart';

class AppColors {
  static Color bgcolor = Colors.green.shade200;

  static List<BoxShadow> shadows = [
    BoxShadow(
      color: Colors.white.withValues(),
      spreadRadius: -5,
      blurRadius: 25,
      offset: Offset(-5, -5),
    ),
    BoxShadow(
      color: Colors.green.shade200.withValues(alpha: Opacity(opacity: Opacity,)),
      spreadRadius: -5,
      blurRadius: 25,
      offset: Offset(-5, -5),
    ),
  ];

}