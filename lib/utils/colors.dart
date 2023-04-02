import 'package:flutter/material.dart';

Color textColorForBackground(Color backgroundColor) {
  if (ThemeData.estimateBrightnessForColor(backgroundColor) ==
      Brightness.dark) {
    return Colors.white;
  }

  return Colors.black;
}

const kPrimaryColor = Color(0xffFFCB2F);
const kSecondaryColor = Color(0xFF151514);
const kMiniTextColor = Color(0xFF5F5E5C);
const kBoldTextColor = Color(0xFF29261C);

const kContentColorDarkAppbarTheme = Color(0xFF202C33);
const kContentColorLightAppbarTheme = Color(0xFFF0F2F5);
const kContentColorDarkTheme = Color(0xFF111B21);
const kWarninngColor = Color(0xFFF3BB1C);
const kErrorColor = Color(0xFFF03738);

const Color kButtonColor = Color(0xffC4BA9A);
Color kShadowColor = const Color(0xff000000).withOpacity(0.25);
const Color kBlackColor = Color(0xff000000);
const Color kColorWhite = Color(0xffFFFFFF);
const Color kColorShade = Color(0xffDDDDDD);
const Color kColorGreen = Color(0xFF40C35E);
const Color kColorBorder = Color(0xFFEFEFEF);
const Color kColorText = Color(0xff787878);
const Color kColorBlue = Color(0xff276DF7);
const Color kColorText2 = Color(0xff494949);
