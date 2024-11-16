import 'package:flutter/material.dart';
import 'app_colors.dart';

class TextXTheme{
  TextXTheme._();

  static final text16=TextStyle(
    fontFamily: getFontFamily,
    fontWeight:FontWeight.w600,
    fontSize: 16,
    color: darkGrey
  );
  static final text14=TextStyle(
      fontFamily: getFontFamily,
      fontWeight:FontWeight.w500,
      fontSize: 14,
      color: darkGrey
  );
  static final text24=TextStyle(
    fontFamily: getFontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color:  darkPrimary
  );
  static final text18=TextStyle(
      fontFamily: getFontFamily,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color:  bluePrimary
  );


}