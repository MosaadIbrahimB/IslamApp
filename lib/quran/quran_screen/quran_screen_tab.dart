import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/provider/app_config_provider.dart';
import 'package:provider/provider.dart';
import '../quran_model/divider_row.dart';
import '../quran_model/list_quran_model.dart';
import '../quran_model/soura_name_text_model.dart';

class QuranTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/qur2an_screen_logo.png",
              height: 200,
            ),
            const DividerRow(),
            Text(
              provider.isLangaugeEnglish()?
              AppLocalizations.of(context)!.souraName:
              AppLocalizations.of(context)!.souraName,
              style:
              provider.isThemeModeDark()?
              MyTheme.darkTheme.textTheme.displayMedium:
              Theme.of(context).textTheme.displayMedium

            ),
            const DividerRow(),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (c, i) =>
                      TextSouraNameModel(
                          name: souraNames[i],
                          numberSoura: i),
                  separatorBuilder: (c, i) => DividerRow(),
                  itemCount: souraNames.length),
            ),
          ],
        ),
      ),
    );
  }
}
