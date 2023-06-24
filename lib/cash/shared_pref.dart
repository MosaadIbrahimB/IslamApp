

import 'package:shared_preferences/shared_preferences.dart';

class SharePref {
  static late SharedPreferences pref;


//set lang----------------
  static Future<void> setlanguage(String lang) async {
    await pref.setString('language', lang);
  }

//get lang -----------------------
  static String getLanguage() => pref.getString('language') ?? "en";


  //setTheme
  static Future<void> setTheme(String theme) async {
    await pref.setString('theme', theme);
  }

//getTheme
  static String getTheme() => pref.getString('theme') ?? 'dark';
}
