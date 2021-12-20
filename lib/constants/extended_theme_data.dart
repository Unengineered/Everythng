import 'package:flutter/material.dart';

class ExtendedThemeData {
  final TextAndIconography? textAndIconography;
  final MaterialColor? primaryColor;
  final Color? errorColor;
  final Color? successColor;

  ExtendedThemeData({
    this.primaryColor,
    this.textAndIconography,
    this.errorColor,
    this.successColor,
  });
}

class TextAndIconography {
  final Color high;
  final Color medium;
  final Color disabled;

  static TextAndIconography get instance => TextAndIconography(
      high: Colors.black87,
      medium: Colors.black.withOpacity(0.6),
      disabled: Colors.black38);

  TextAndIconography(
      {required this.high, required this.medium, required this.disabled});
}
