import 'package:everythng/constants/extended_text_theme.dart';
import 'package:everythng/constants/extended_theme_data.dart';
import 'package:flutter/material.dart';

extension ThemeContext on BuildContext {
  ExtendedThemeData get everythngThemeData => ExtendedThemeData(
    primaryColor: const MaterialColor(
      0xFF007AE1,
      <int, Color>{
        50: Color(0xFFDFF2FF),
        100: Color(0xFFBFE4FF),
        150: Color(0xFF9FD7FF),
        200: Color(0xFF80CAFF),
        250: Color(0xFF60BDFF),
        300: Color(0xFF40AFFF),
        350: Color(0xFF20A2FF),
        400: Color(0xFF007AE1),
        450: Color(0xFF0082DF),
        500: Color(0xFF0070BF),
        550: Color(0xFF005D9F),
        600: Color(0xFF004A80),
        700: Color(0xFF003860),
        800: Color(0xFF002540),
        900: Color(0xFF001320),
      },
    ),
    textAndIconography: TextAndIconography.instance,
    successColor: const Color(0xFF34C759),
    errorColor: const Color(0xFFFF453A),
  );
  ExtendedTextTheme get everythngTextTheme => ExtendedTextTheme.instance;
}