import 'package:flutter/material.dart';

class ThemeUtils {
  static Color primaryColor;
  static Color primaryColorDark;
  static Color primaryColorDarkLight;
  static Color accentColor;
  static ThemeData theme;

  static void init(BuildContext context) {
    theme = Theme.of(context);
    primaryColor = theme.primaryColor;
    primaryColorDark = theme.primaryColorDark;
    primaryColorDarkLight = theme.primaryColorLight;
    accentColor = theme.accentColor;
  }
}