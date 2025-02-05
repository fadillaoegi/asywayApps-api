import 'package:aswayapp/app/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeConfigFLdev {
  static themeData() {
    return ThemeData(
        scaffoldBackgroundColor: Color(0xffFDFDFD),
        textTheme: GoogleFonts.poppinsTextTheme(),
        indicatorColor: ColorAppsFLdev.primary,
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: ColorAppsFLdev.primary),
            backgroundColor: ColorAppsFLdev.white),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: ColorAppsFLdev.white));
  }
}
