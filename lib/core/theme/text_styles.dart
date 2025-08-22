import 'package:flutter/material.dart';

class AppTextStyles {
  static const titleLarge = TextStyle(
    fontFamily: 'Lobster',
    fontSize: 48,
    height: 1.1,
  );

  static const titleMedium = TextStyle(
    fontFamily: 'SFPro',
    fontWeight: FontWeight.w600,
    fontSize: 36,
    height: 1.2,
  );

  static const body = TextStyle(
    fontFamily: 'SFPro',
    fontSize: 16, // para UI realista en móvil
    height: 1.35,
  );

  static const bodySmall = TextStyle(
    fontFamily: 'SFPro',
    fontSize: 14,
    height: 1.3,
  );
}
