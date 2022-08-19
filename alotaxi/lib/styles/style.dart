import 'package:flutter/material.dart';

class ColorStyles {
  static const Color yellow = Color(0xFFD6AB1B);

  static const Color white = Color(0xFFFFFFFF);

  static const Color black = Color(0xFF0E0E10);

  static const Color grey = Color.fromARGB(255, 145, 145, 152);
}

class TextStyles {
  static const TextStyle head1 = TextStyle(
      color: ColorStyles.white, fontSize: 18, fontWeight: FontWeight.bold);

  static const TextStyle head2 = TextStyle(
      color: ColorStyles.white, fontSize: 16, fontWeight: FontWeight.w500);

  static const TextStyle body = TextStyle(
      color: ColorStyles.grey, fontSize: 14, fontWeight: FontWeight.w300);

  static const TextStyle button1 = TextStyle(
      color: ColorStyles.white, fontSize: 16, fontWeight: FontWeight.bold);

  static const TextStyle button2 = TextStyle(
      color: ColorStyles.white, fontSize: 16, fontWeight: FontWeight.w500);
}
