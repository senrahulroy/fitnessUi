import 'package:flutter/material.dart';

class MyAppColor {
  final appMainColor = const Color(0xff92A3FD);
  final appMainColor2 = const Color(0xff9DCEFF);
  final appWhite = const Color(0xffffffff);
  final appBlack = const Color(0xff000000);
  final appGray = const Color(0xff7B6F72);

  final blueLinear =
      const LinearGradient(colors: [Color(0xff9DCEFF), Color(0xff92A3FD)]);
  final purpleLinear =
      const LinearGradient(colors: [Color(0xffEEA4CE), Color(0xffC58BF2)]);
  final List<Color> blueColorList = const [
    Color(0xff9DCEFF),
    Color(0xff92A3FD)
  ];

  final List<Color> purpleColorList = const [
    Color(0xffEEA4CE),
    Color(0xffC58BF2)
  ];
}
