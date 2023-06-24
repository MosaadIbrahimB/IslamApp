import 'package:flutter/material.dart';
import 'package:islam_app/cash/shared_pref.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'en';
  ThemeMode appthemeMode = ThemeMode.dark;

  AppConfigProvider() {
    init();
  }

  void init() {
    getLocalFromPrefs();
    getModeFromPrefs();
  }

  changeLanguage(String newLanguage) {
    if (newLanguage == appLanguage) {
      notifyListeners();
      return;
    }
    appLanguage = newLanguage;
    SharePref.setlanguage(appLanguage);
    notifyListeners();
  }

  bool isLangaugeEnglish() {
    return appLanguage == 'en';
  }

  //theme
  void changeTheme(ThemeMode newThemeMode) {
    if (appthemeMode==newThemeMode ) {

      return;
    }else {
      appthemeMode = newThemeMode;
      if (appthemeMode == ThemeMode.dark)
      {SharePref.setTheme('dark');}
      else{SharePref.setTheme('light');}
      notifyListeners();

    }



    notifyListeners();
  }

//init local
  void getLocalFromPrefs() {
    appLanguage = SharePref.getLanguage();
    notifyListeners();
  }

//init theme
  void getModeFromPrefs() {
    if (SharePref.getTheme() == 'dark') {
      appthemeMode = ThemeMode.dark;
    } else {
      appthemeMode = ThemeMode.light;
    }
    notifyListeners();
  }

  bool isThemeModeDark() {
    return appthemeMode == ThemeMode.dark;
  }
}
