import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData? currentTheme;

  setLightMode() {
    currentTheme = ThemeData(
      brightness: Brightness.light, // LightMode
      scaffoldBackgroundColor: Colors.white,
    );
    notifyListeners();
  }

  setDarkmode() {
    currentTheme = ThemeData(
      brightness: Brightness.dark, // DarkMode
      scaffoldBackgroundColor: Colors.black,
    
    );
    notifyListeners();
  }
}