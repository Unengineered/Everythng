
import 'package:everythng/core/classes/theme_data.dart';
import 'package:everythng/core/classes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:everythng/core/constants/colors.dart';

extension ThemeContext on BuildContext {
  ExtendedThemeData get everythngThemeData => ExtendedThemeData(
    primaryColor: everythngPrimaryColor,
    textAndIconography: TextAndIconography.instance,
    successColor: everthngSuccessColor,
    errorColor: everthngFailureColor,
  );
  ExtendedTextTheme get everythngTextTheme => ExtendedTextTheme.instance;

}