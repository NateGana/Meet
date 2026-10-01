import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF116466);
  static const Color background = Color(0xFFF6F8F7);
  static const Color ink = Color(0xFF1B2426);
  static const Color muted = Color(0xFF5C6B67);
  static const Color border = Color(0xFFE1EAE8);
  static const Color card = Colors.white;
}

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary, primary: AppColors.primary),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: AppColors.ink),
        titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.ink),
        bodyMedium: TextStyle(fontSize: 14, color: AppColors.muted, height: 1.45),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: AppColors.border)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: AppColors.border)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: AppColors.primary, width: 1.8)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(48),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
