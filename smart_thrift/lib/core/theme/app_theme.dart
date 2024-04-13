import 'package:flutter/material.dart';
import 'package:smart_thrift/core/theme/app_pallete.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: color),
      borderRadius: BorderRadius.circular(8));

  static final ThemeData lightThemeMode = ThemeData.light().copyWith(
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        enabledBorder: _border(),
        focusedBorder: _border(AppPallete.primary),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            textStyle: const TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20, letterSpacing: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
      ),
      scaffoldBackgroundColor: AppPallete.bacckgroundColor);
}
