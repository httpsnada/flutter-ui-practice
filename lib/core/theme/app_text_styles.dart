import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static final TextStyle titleLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    fontFamily: GoogleFonts.roboto().fontFamily,
  );

  static final TextStyle body = TextStyle(
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.roboto().fontFamily,
  );

  static final TextStyle caption = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.roboto().fontFamily,
  );
}
