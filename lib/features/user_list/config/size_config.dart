import 'dart:math';

import 'package:flutter/material.dart';

// This will be used to create responsive UI. Check out the link in description for medium article for more details after the video :)

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
  static double? screenTopPadding;
  static double? screenBottomPadding;
  static double? screenCrossLength;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
    screenTopPadding = _mediaQueryData!.padding.top;
    screenBottomPadding = _mediaQueryData!.padding.bottom;
    double add =
        ((screenHeight! * screenHeight!) + (screenWidth! * screenWidth!)) / 100;
    screenCrossLength = sqrt(add);
  }
}
