import 'package:flutter/material.dart';
import 'package:islam_app/screen/hadeth_screen.dart';
import 'package:islam_app/screen/quran/quran_screen_tab.dart';
import 'package:islam_app/screen/radio_screen.dart';
import 'package:islam_app/screen/sebha_screen.dart';

class HomeScreenIslamApp extends StatefulWidget {
  static const String routeName = 'HomeScreenIslamApp';

  @override
  State<HomeScreenIslamApp> createState() => _HomeScreenIslamAppState();
}

class _HomeScreenIslamAppState extends State<HomeScreenIslamApp> {
  int indexSelect = 0;
  List<Widget> tabs=[QuranTab(),HadethTab(),SebhaTab(),RadioTab()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/default_bg.png",
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text(
                'islami',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            body: tabs[indexSelect],
            bottomNavigationBar: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: Theme.of(context).primaryColor),
              child: BottomNavigationBar(

                onTap: (value) {
                  indexSelect = value;
                  setState(() {

                  });
                },
                currentIndex: indexSelect,
                items:const [
                  BottomNavigationBarItem(
                      label: "quran",
                      icon: ImageIcon(
                          AssetImage("assets/images/2.0x/icon_quran.png"))),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_hadeth.png'),
                    ),
                    label: 'hadeth',
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                          AssetImage("assets/images/head_sebha_logo.png")),
                      label: 'sebha'),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/images/icon_radio.png')),
                      label: 'radio')
                ],
              ),
            )),
      ],
    );
  }
}
