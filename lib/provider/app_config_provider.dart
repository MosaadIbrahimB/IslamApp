import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'en';
  ThemeMode appthemeMode = ThemeMode.dark;

  AppConfigProvider() {
    init();
  }

  void init() {
    //print('INIT');
    getLocalFromPrefs();
    getModeFromPrefs();
  }

  changeLanguage(String newLanguage) {
    if (newLanguage == appLanguage) {
      notifyListeners();
      return;
    }
    appLanguage = newLanguage;
    updateLanguage(newLanguage);

    notifyListeners();
  }

  bool isLangaugeEnglish() {
    return appLanguage == 'en';
  }

  //theme
  void changeTheme(ThemeMode newThemeMode) {
    if (newThemeMode == appthemeMode) {
      return;
    }
    appthemeMode = newThemeMode;
    updateTheme(appthemeMode);
    notifyListeners();
  }

  void updateLanguage(String appLanguage) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', appLanguage);
  }

  void updateTheme(ThemeMode newTheme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    newTheme == ThemeMode.dark
        ? await prefs.setBool('themeMode', true)
        : await prefs.setBool('themeMode', false);
  }

  void getLocalFromPrefs() {
    SharedPreferences.getInstance().then((value) {
      appLanguage = value.getString('language') ?? 'ar';
      notifyListeners();
     // print(appLanguage);
    });
  }

  void getModeFromPrefs() {
    SharedPreferences.getInstance().then((value) {
      bool dark = value.getBool('themeMode') ?? true;
//      print(dark);

      if (dark) {
        appthemeMode = ThemeMode.dark;
      } else {
        appthemeMode = ThemeMode.light;
      }
      notifyListeners();
    });
  }

  bool isThemeModeDark() {
    return appthemeMode == ThemeMode.dark;
  }
}
