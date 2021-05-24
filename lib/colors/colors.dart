import 'package:flutter/material.dart';

final mainBlue = createMaterialColor(0xFF1B0086);
final mainOrange = createMaterialColor(0xFFFFB800);
final backgroundGrey = createMaterialColor(0xFFFAFAFA);
final borderGrey = createMaterialColor(0xFFD4D4D4);
final labelGrey = createMaterialColor(0xFF878787);
final mainGreen = createMaterialColor(0xFF00B86B);

MaterialColor createMaterialColor(int color) {
  final Map<int, Color> colors = {
    50: const Color.fromRGBO(136, 14, 79, .1),
    100: const Color.fromRGBO(136, 14, 79, .2),
    200: const Color.fromRGBO(136, 14, 79, .3),
    300: const Color.fromRGBO(136, 14, 79, .4),
    400: const Color.fromRGBO(136, 14, 79, .5),
    500: const Color.fromRGBO(136, 14, 79, .6),
    600: const Color.fromRGBO(136, 14, 79, .7),
    700: const Color.fromRGBO(136, 14, 79, .8),
    800: const Color.fromRGBO(136, 14, 79, .9),
    900: const Color.fromRGBO(136, 14, 79, 1),
  };
  return MaterialColor(color, colors);
}