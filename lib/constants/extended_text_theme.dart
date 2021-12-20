import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


FontWeight extraBold = FontWeight.w800;
FontWeight bold = FontWeight.bold;
FontWeight semiBold = FontWeight.w600;
FontWeight medium = FontWeight.w500;
FontWeight regular = FontWeight.normal;

class ExtendedTextTheme {
  static ExtendedTextTheme instance = ExtendedTextTheme(
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
  final TextStyle? display;
  final TextStyle? headline1Bold;
  final TextStyle? headline2Bold;
  final TextStyle? headline2SemiBold;
  final TextStyle? headline3Bold;
  final TextStyle? headline4Bold;
  final TextStyle? headline5;
  final TextStyle? headline6;
  final TextStyle? bodyTextMedium;
  final TextStyle? bodyTextSemiBold;
  final TextStyle? captionMedium;
  final TextStyle? captionSemiBold;
  final TextStyle? footerMedium;
  final TextStyle? footerSemiBold;

  const ExtendedTextTheme({
    this.display,
    this.headline1Bold,
    this.headline2Bold,
    this.headline2SemiBold,
    this.headline3Bold,
    this.headline4Bold,
    this.headline5,
    this.headline6,
    this.bodyTextMedium,
    this.bodyTextSemiBold,
    this.captionMedium,
    this.captionSemiBold,
    this.footerMedium,
    this.footerSemiBold,
  });
}