import 'package:flutter/material.dart';
import 'package:tinycolor/tinycolor.dart';

class PageModel {
  const PageModel(this.title, this.color);
  final String title;
  final Color color;
}

final List<PageModel> pages = [
  PageModel(
      'Screen 1',
      TinyColor.fromRGB(
        r: 198,
        g: 222,
        b: 240,
        a: 255,
      ).color),
  PageModel(
      'Screen 2',
      TinyColor.fromRGB(
        r: 85,
        g: 149,
        b: 228,
        a: 255,
      ).color),
  PageModel(
      'Screen 4',
      TinyColor.fromRGB(
        r: 0,
        g: 62,
        b: 121,
        a: 255,
      ).color),
];
