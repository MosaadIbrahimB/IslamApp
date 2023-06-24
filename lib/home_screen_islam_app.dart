import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';
import 'package:islam_app/provider/app_config_provider.dart';
import 'package:islam_app/quran/quran_screen/quran_screen_tab.dart';
import 'package:islam_app/radio/radio_screen/radio_screen.dart';
import 'package:islam_app/sebha/sebah_screen/sebha_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'hadeth/hadeth_screen/hadeth_screen_tab.dart';
import 'model/ImagBackgroundWidget.dart';
import 'seting/setting_screen/Seting_tab_screen.dart';

class HomeScreenIslamApp extends StatefulWidget {
  static const String routeName = 'HomeScreenIslamApp';

  @override
  State<HomeScreenIslamApp> createState() => _HomeScreenIslamAppState();
}

class _HomeScreenIslamAppState extends State<HomeScreenIslamApp> {
  int indexSelect = 0;

  List<Widget> tabs=[QuranTab(),HadethTab(),SebhaTab(),RadioTab(),SettingTab()];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        ImagBackgroundWidget(provider: provider),
        Scaffold(
            appBar: AppBar(
              title: Text(
                AppLocalizations.of(context)!.islami,
                style:provider.isThemeModeDark()?
                MyTheme.darkTheme.textTheme.displayLarge:
                MyTheme.lightTheme.textTheme.displayLarge
                ,
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
                items: [
                  BottomNavigationBarItem(
                      label:  AppLocalizations.of(context)!.quran,
                      icon:const ImageIcon(
                          AssetImage("assets/images/2.0x/icon_quran.png")),
                  ),
                  BottomNavigationBarItem(
                    icon:const ImageIcon(
                      AssetImage('assets/images/icon_hadeth.png'),
                    ),
                    label: AppLocalizations.of(context)!.hadeth,
                  ),
                  BottomNavigationBarItem(
                      icon:const ImageIcon(
                          AssetImage("assets/images/icon_sebha.png")),
                      label: AppLocalizations.of(context)!.sebaha),
                  BottomNavigationBarItem(
                      icon:const
                          ImageIcon(AssetImage('assets/images/icon_radio.png')),
                      label: AppLocalizations.of(context)!.radio),
                  BottomNavigationBarItem(
                      icon:const Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.seting),


                ],
              ),
            )),
      ],
    );
  }

}

// class ImagBackgroundWidget extends StatelessWidget {
//   const ImagBackgroundWidget({
//     super.key,
//     required this.provider,
//   });
//
//   final AppConfigProvider provider;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(child:  provider.isThemeModeDark()?
//     Image.asset(
//       "assets/images/dark_bg.png",
//       fit: BoxFit.fill,
//       width: double.infinity,
//       height: double.infinity,
//     ):
//     Image.asset(
//       "assets/images/default_bg.png",
//       fit: BoxFit.fill,
//       width: double.infinity,
//       height: double.infinity,
//     ),);
//   }
// }
