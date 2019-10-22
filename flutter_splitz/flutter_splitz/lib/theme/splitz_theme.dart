import 'package:flutter/material.dart';
import 'package:flutter_splitz/theme/splitz_color.dart';

class SplitzThemeData {
  ThemeData call() => ThemeData(
    backgroundColor: Colors.white,
    primaryColor: Colors.black,
    accentColor: Color(SplitzColors.GREEN_ACCENT),
    iconTheme: IconThemeData(
        color: Colors.white
    ),
  );
}