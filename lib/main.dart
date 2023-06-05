import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';
import 'package:islam_app/screen/home_screen_islam_app.dart';
import 'package:islam_app/screen/quran/sura_details_screen.dart';

void main() {
  runApp(IslamApp());
}

class IslamApp extends StatelessWidget {
  const IslamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreenIslamApp.routeName: (_) => HomeScreenIslamApp(),
        SouraDetails.routeName: (_) => SouraDetails(),
      },
      initialRoute: HomeScreenIslamApp.routeName,
      theme: MyTheme.themeLight,

    );
  }
}
