import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:microsoft_teams/utils/colors.dart';

class AppTheme {
// 1
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.roboto(color: const Color(0xff485054)),
    bodyText2: GoogleFonts.roboto(color: kBoldTextColor),
    headline2: GoogleFonts.roboto(color: kBoldTextColor),
    headline1: GoogleFonts.roboto(color: kMiniTextColor),
  );
// 2
  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.roboto(color: const Color(0xffE9EDEF)),
    bodyText2: GoogleFonts.roboto(color: const Color(0xff586770)),
    headline1: GoogleFonts.roboto(color: Colors.white),
    headline2: GoogleFonts.roboto(color: Colors.white),
    headline3: GoogleFonts.openSans(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    headline6: GoogleFonts.openSans(
        fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white),
  );

  static ThemeData lightThemeData() {
    return ThemeData(
      textTheme: lightTextTheme,
      primaryColor: kContentColorLightAppbarTheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffF0F2F5),
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xff54656F))),
      iconTheme: const IconThemeData(color: Color(0xff54656F)),
      colorScheme: const ColorScheme.light(
          primary: kPrimaryColor,
          secondary: kSecondaryColor,
          error: kErrorColor),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: kBoldTextColor.withOpacity(0.88),
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: kContentColorDarkAppbarTheme.withOpacity(0.7),
        unselectedItemColor: kContentColorDarkAppbarTheme.withOpacity(0.32),
        selectedIconTheme: const IconThemeData(color: kPrimaryColor),
        showUnselectedLabels: true,
      ),
    );
  }

  static ThemeData darkThemeData() {
    return ThemeData(
      textTheme: darkTextTheme,
      primaryColor: kContentColorDarkAppbarTheme,
      scaffoldBackgroundColor: kContentColorDarkTheme,
      appBarTheme: const AppBarTheme(
          backgroundColor: kContentColorDarkAppbarTheme,
          elevation: 0,
          actionsIconTheme: IconThemeData(color: Color(0xffAEBAC1))),
      iconTheme: const IconThemeData(color: Color(0xffAEBAC1)),
      colorScheme: const ColorScheme.dark().copyWith(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        error: kErrorColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: kPrimaryColor,
      ),
      dividerColor: const Color(0xff2C3539),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: kContentColorDarkAppbarTheme,
        selectedItemColor: Colors.white70,
        unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
        selectedIconTheme: const IconThemeData(color: kPrimaryColor),
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        showUnselectedLabels: true,
      ),
    );
  }
}
