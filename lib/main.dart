import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';
import 'package:islam_app/screen/home_screen_islam_app.dart';

void main(){
  runApp(IslamApp());
}
class IslamApp extends StatelessWidget {
  const IslamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreenIslamApp.routeName:(_)=>HomeScreenIslamApp(),
      } ,
      initialRoute: HomeScreenIslamApp.routeName,

    theme:MyTheme.theme_light ,
    );
  }
}


