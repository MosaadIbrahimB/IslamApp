import 'package:flutter/material.dart';

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
    );
  }
}
class HomeScreenIslamApp extends StatelessWidget {
static const String routeName='HomeScreenIslamApp';
  @override
  Widget build(BuildContext context) {
    return  Scaffold();
  }
}

