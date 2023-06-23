import 'package:flutter/material.dart';
import 'package:islam_app/provider/app_config_provider.dart';
import 'package:islam_app/seting/setting_model/function_model.dart';
import 'package:islam_app/seting/setting_model/text_setting_Lang_Theme.dart';
import 'package:islam_app/seting/setting_model/widget_return_show_theme_bottomSheet.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SettingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: MediaQuery.of(context).size.width * .04,
        right: MediaQuery.of(context).size.width * .01,
      ),
      child: Column(
        children: [
          InkWell(
            child: TextSettingLangAndTheme(
              title: AppLocalizations.of(context)!.language,
              text: provider.isLangaugeEnglish()?
              AppLocalizations.of(context)!.english:
              AppLocalizations.of(context)!.arabic,
            ),
            onTap: () => showLangBottomSheet(
                context: context,
                choseOne: "English",
                choseTwo: "العربية",
                selectFunctionOne: () {
                  provider.changeLanguage("en");
                },
                selectFunctionTwo: () {
                  provider.changeLanguage("ar");
                },),
          ),

          InkWell(

            child: TextSettingLangAndTheme(
              title: AppLocalizations.of(context)!.theming,
              text: provider.isThemeModeDark()?
              AppLocalizations.of(context)!.dark:
              AppLocalizations.of(context)!.light,
            ),
            onTap: () => showThemeBottomSheet(
              context: context,
              choseOne: AppLocalizations.of(context)!.dark,
              choseTwo: AppLocalizations.of(context)!.light,

              selectFunctionOne: () {
                provider.changeTheme(ThemeMode.dark);
              },
              selectFunctionTwo: () {
                provider.changeTheme(ThemeMode.light);

              },
            ),
          ),
          

        ],
      ),
    );
  }
}
