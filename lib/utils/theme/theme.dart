import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData themeData = ThemeData(
    textTheme: TextTheme(
      bodySmall: GoogleFonts.aBeeZee(
        fontSize: 16,
        color: Color(0xffCFCFCF),
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.aBeeZee(
        fontSize: 16,
        color: Color(0xff32C0B1),
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: GoogleFonts.aBeeZee(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      headlineLarge: GoogleFonts.aDLaMDisplay(
        fontSize: 22,
        color: Color(0xff32C0B1),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
