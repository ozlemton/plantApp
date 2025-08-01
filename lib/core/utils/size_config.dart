import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;
  static late bool isIOS;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

  static double getProportionalWidth(double inputWidth) {
    return (inputWidth / 375.0) * screenWidth;
  }

  static double getProportionalHeight(double inputHeight) {
    return (inputHeight / 812.0) * screenHeight;
  }
}
