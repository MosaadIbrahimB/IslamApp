import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';
import 'package:islam_app/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class QuranTextContent extends StatelessWidget {
  String text;
  int numerLine;
  QuranTextContent({required this.text,required this.numerLine});
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    return Text(
      '${text}(${numerLine})',
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,

      style: provider.isThemeModeDark()?
      MyTheme.darkTheme.textTheme.bodyLarge?.copyWith(color: Colors.white):
      MyTheme.lightTheme.textTheme.bodyLarge,
    );
  }
}
