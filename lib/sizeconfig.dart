import 'package:flutter/material.dart';

class Sizeconfig {
  static double width = 390;
  static double height = 844;

  static late double screenHeight;
  static late double screenWidth;
  static late MediaQueryData _mediaQueryData;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
  }
}

double propHeight(double height) {
  double screenHeight = Sizeconfig.screenHeight;
  return (height / Sizeconfig.height) * screenHeight;
}

double propWidth(double width) {
  double screenWidth = Sizeconfig.screenWidth;
  return (width / Sizeconfig.width) * screenWidth;
}
