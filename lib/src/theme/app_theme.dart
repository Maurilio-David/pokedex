import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const white = Color(0XFFFFFFFF);
const ice = Color(0XFFF1F3F5);
const darkBlue = Color(0XFF2F3E77);
const dark = Color(0XFF383332);
const red = Color(0XFFEA686D);
const pink = Color(0XFFF1AFB2);
const green = Color(0XFF49D0B0);
const greenDark = Color(0XFF2E7885);
const purple = Color(0XFF9E81A9);
const gray = Color(0XFFA2A9B0);
const gray2 = Color(0XFF5E6770);
const gray3 = Color(0XFF868E96);
const gray4 = Color(0XFFE9ECEF);
final darkGradient = LinearGradient(
    colors: [
      const Color(0xff000000),
      const Color(0xff000000).withOpacity(0.1),
    ],
    tileMode: TileMode.mirror,
    begin: Alignment.bottomLeft,
    end: Alignment.centerRight);

final ThemeData appTheme = ThemeData(
    primaryColor: darkBlue,
    backgroundColor: white,
    highlightColor: const Color(0xFF309CC3),
    scaffoldBackgroundColor: const Color(0xFFE5E5E5),
    appBarTheme: const AppBarTheme(elevation: 0, color: Color(0xFFF2F2F2)),
    textTheme: TextTheme(
      bodyText1: GoogleFonts.nunito(
        color: darkBlue,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      bodyText2: GoogleFonts.nunito(
        color: gray,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      headline1: GoogleFonts.nunito(
        color: gray2,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      headline2: GoogleFonts.nunito(
        color: gray2,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      headline3: GoogleFonts.nunito(
        color: gray2,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      headline4: GoogleFonts.nunito(
        color: gray2,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      headline5: GoogleFonts.nunito(
        color: gray2,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
    ));
