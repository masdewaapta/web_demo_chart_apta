import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color cBlack = const Color(0xFF000000);
Color cWhite = const Color(0xFFFFFFFF);
Color cBlue = const Color(0xFF2563EB);
Color cGreyACtive = const Color(0xFF71717A).withOpacity(0.2);
Color cGrey = const Color(0xFFB2B2B2);
Color cGrey2 = const Color(0xFF71717A);
Color cBackground = const Color(0xFFF4F4F5);
Color cRed = const Color(0xFFDC2626);
Color cTransparent = Colors.transparent;

TextStyle blackTextStyle = GoogleFonts.poppins(color: cBlack);
TextStyle whiteTextStyle = GoogleFonts.poppins(color: cWhite);
TextStyle greyTextStyle = GoogleFonts.poppins(color: cGrey);
TextStyle customTextStyle = GoogleFonts.poppins();

FontWeight extraLight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

List<BoxShadow> shadowBox = [
  BoxShadow(
    color: cBlack.withOpacity(0.25),
    offset: const Offset(4.0, 4.0), //(x,y)
    blurRadius: 10.0,
  ),
];
