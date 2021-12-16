// ignore_for_file: prefer_const_constructors

import 'package:everythng/constants/extended_text_theme.dart';
import 'package:everythng/constants/extended_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var fontFamily = 'inter';
FontWeight extraBold = FontWeight.w800;
FontWeight bold = FontWeight.bold;
FontWeight semiBold = FontWeight.w600;
FontWeight medium = FontWeight.w500;
FontWeight regular = FontWeight.normal;


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
        textAndIconography: <String, Color>{
          'highEmphasis': Colors.black87,
          'mediumEmphasis': Colors.black.withOpacity(0.6),
          'disabled': Colors.black38,
        },
        successColor: const Color(0xFF34C759),
        errorColor: const Color(0xFFFF453A),
      );
  ExtendedTextTheme get everythngTextTheme => ExtendedTextTheme(
    headline1Bold: GoogleFonts.inter(
      textStyle: TextStyle(
        color: Colors.black87,
        fontSize: 34,
        fontWeight: bold,
        letterSpacing: -1,
      ),
    ),
    headline2Bold: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 24,
        color: Colors.black87,
        fontWeight: bold,
        letterSpacing: -1,
      ),
    ),
    headline2SemiBold: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 24,
        color: Colors.black87,
        fontWeight: semiBold,
        letterSpacing: -1,
      ),
    ),
    headline3Bold: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 20,
        color: Colors.black87,
        fontWeight: bold,
        letterSpacing: -1,
      ),
    ),
    headline4Bold: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 16,
        color: Colors.black87,
        fontWeight: bold,
        letterSpacing: -0.5,
      ),
    ),
    headline5: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 14,
        color: Colors.black87,
        fontWeight: semiBold,
        letterSpacing: -0.5,
      ),
    ),
    headline6: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 12,
        color: Colors.black87,
        fontWeight: semiBold,
        letterSpacing: -0.5,
      ),
    ),
    display: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 52,
        color: Colors.black87,
        fontWeight: extraBold,
        letterSpacing: -0.3,
      ),
    ),
    bodyTextMedium: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 14,
        color: Colors.black87,
        fontWeight: medium,
        letterSpacing: -0.6,
      ),
    ),
    bodyTextSemiBold: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 14,
        color: Colors.black87,
        fontWeight: semiBold,
        letterSpacing: -0.7,
      ),
    ),
    captionMedium: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 11,
        color: Colors.black87,
        fontWeight: medium,
        letterSpacing: -0.5,
      ),
    ),
    captionSemiBold: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 11,
        color: Colors.black87,
        fontWeight: semiBold,
        letterSpacing: -0.5,
      ),
    ),
    footerMedium: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 10,
        color: Colors.black87,
        fontWeight: regular,
        letterSpacing: -0,
      ),
    ),
    footerSemiBold: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 10,
        color: Colors.black87,
        fontWeight: semiBold,
        letterSpacing: -0,
      ),
    ),
  );
}