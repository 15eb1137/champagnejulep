import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_service_provider.g.dart';

@riverpod
ThemeService themeService(ThemeServiceRef ref) => ThemeService();

class ThemeService {
  ThemeMode getThemeMode() {
    return ThemeMode.system;
  }

  Color getPrimary() {
    return const Color(0xFF6864EC);
  }

  Color getSecondary() {
    return const Color(0xFFAC7EF8);
  }

  Color getBackground() {
    return const Color(0xFFF8F8F9);
  }

  Color getWhite() {
    return const Color(0xFFFFFFFF);
  }

  Color getBlack() {
    return const Color(0xFF000000);
  }
}
