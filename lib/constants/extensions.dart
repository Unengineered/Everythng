// ignore_for_file: prefer_const_constructors

import 'package:everythng/constants/extended_text_theme.dart';
import 'package:everythng/constants/extended_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var fontFamily = 'inter';

extension EverythngThemeData on ThemeData {
  ExtendedThemeData get everythngThemeData => ExtendedThemeData(
        primaryColor: const MaterialColor(
          0xFF0094FF,
          <int, Color>{
            50: Color(0xFFDFF2FF),
            100: Color(0xFFBFE4FF),
            150: Color(0xFF9FD7FF),
            200: Color(0xFF80CAFF),
            250: Color(0xFF60BDFF),
            300: Color(0xFF40AFFF),
            350: Color(0xFF20A2FF),
            400: Color(0xFF0094FF),
            450: Color(0xFF0082DF),
            500: Color(0xFF0070BF),
            550: Color(0xFF005D9F),
            600: Color(0xFF004A80),
            700: Color(0xFF003860),
            800: Color(0xFF002540),
            900: Color(0xFF001320),
          },
        ),
        textAndIconography: <String, Color>{
          'highEmphasis': Colors.black87,
          'mediumEmphasis': Colors.black.withOpacity(0.6),
          'disabled': Colors.black38,
        },
        successColor: const Color(0xFF34C759),
        errorColor: const Color(0xFFFF453A),
      );
}

extension EverythngTextTheme on TextTheme {
  ExtendedTextTheme get everythngTextTheme => ExtendedTextTheme(
        headline1: GoogleFonts.inter(
          textStyle: TextStyle(
            color: Colors.black87,
            fontSize: 34,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.5,
          ),
        ),
        headline2: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: 24,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.5,
          ),
        ),
        headline3: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: 20,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.25,
          ),
        ),
        headline4: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: 16,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.9,
          ),
        ),
        headline5: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: 14,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.7,
          ),
        ),
        headline6: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: 12,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.5,
          ),
        ),
        display: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: 52,
            color: Colors.black87,
            fontWeight: FontWeight.w800,
            letterSpacing: -3,
          ),
        ),
        bodyTextMedium: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.7,
          ),
        ),
        bodyTextSemiBold: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.7,
          ),
        ),
        captionMedium: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: 11,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
            letterSpacing: -1,
          ),
        ),
        captionSemiBold: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: 11,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            letterSpacing: -1,
          ),
        ),
        footerMedium: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: 10,
            color: Colors.black87,
            fontWeight: FontWeight.normal,
            letterSpacing: -0.3,
          ),
        ),
        footerSemiBold: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: 10,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.3,
          ),
        ),
      );
}

extension Double on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

extension StringExtension on String {
  String get inCaps => length > 0 ?'${this[0].toUpperCase()}${substring(1)}':'';

  String get allInCaps => toUpperCase();

  String get capitalizeFirstOfEach => replaceAll(RegExp(' +'), ' ').split(" ").map((str) => str.inCaps).join(" ");

  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }

  bool containsSpecialCharacter() {
    return  RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(this);
  }
}
