import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';
import 'package:islam_app/home_screen_islam_app.dart';
import 'package:islam_app/provider/app_config_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/quran/quran_screen/sura_details_screen.dart';
import 'package:provider/provider.dart';
import 'hadeth/hadeth_screen/hadeth_details_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AppConfigProvider>(
            create: (_) => AppConfigProvider(),
        ),
      ],
      child: (IslamApp()),
    ),
  );
}

class IslamApp extends StatelessWidget {
  const IslamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreenIslamApp.routeName: (_) => HomeScreenIslamApp(),
        SouraDetails.routeName: (_) => SouraDetails(),
        HadethDetails.routeName: (_) => HadethDetails(),
      },
      initialRoute: HomeScreenIslamApp.routeName,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: provider.appthemeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
    );
  }
}
