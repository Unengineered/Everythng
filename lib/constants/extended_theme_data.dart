import 'package:flutter/material.dart';

class ExtendedThemeData {
  final Map<String, Color>? textAndIconography;
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
