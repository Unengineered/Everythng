import 'package:everythng/core/constants/colors.dart';
import 'package:flutter/material.dart';

class ExtendedThemeData {
  final TextAndIconography textAndIconography;
  final MaterialColor primaryColor;
  final Color errorColor;
  final Color successColor;

  ExtendedThemeData({
    required this.primaryColor,
    required this.textAndIconography,
    required this.errorColor,
    required this.successColor,
  });
}

class TextAndIconography {
  final Color high;
  final Color medium;
  final Color disabled;

  static TextAndIconography get instance => TextAndIconography(
        high: highEmphasis,
        medium: mediumEmphasis,
        disabled: disabledColor,
      );

  TextAndIconography({
    required this.high,
    required this.medium,
    required this.disabled,
  });
}
