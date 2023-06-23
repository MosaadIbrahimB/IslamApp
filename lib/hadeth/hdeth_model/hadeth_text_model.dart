import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';
import '../hadeth_screen/hadeth_details_screen.dart';
import 'hadeth_model.dart';
import 'package:islam_app/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class TextHadethNameModel extends StatelessWidget {
  HadethModel hadethModel;
  TextHadethNameModel({required this.hadethModel});
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(
            HadethDetails.routeName,
            arguments: hadethModel
        );
      },
      child: Text(
        hadethModel.title,
        style: provider.isThemeModeDark()?
        MyTheme.darkTheme.textTheme.titleMedium:
        MyTheme.lightTheme.textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
