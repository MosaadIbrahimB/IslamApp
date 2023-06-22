import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';
import 'package:islam_app/provider/app_config_provider.dart';
import 'package:islam_app/quran/quran_model/soura_details_model.dart';
import 'package:provider/provider.dart';

import '../quran_screen/sura_details_screen.dart';

class TextSouraNameModel extends StatelessWidget {
  String name;
  int numberSoura;
  TextSouraNameModel({required this.name,required this.numberSoura});
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: (){
Navigator.of(context).pushNamed(SouraDetails.routeName,
    arguments: SuraDetailsArgsModel(name:name,indx: numberSoura));

      },
      child: Text(
        name,

        style: provider.isThemeModeDark()?
          MyTheme.darkTheme.textTheme.titleMedium:
        Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
