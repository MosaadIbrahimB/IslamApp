import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';

class TextContent extends StatelessWidget {
  String text;
  int numerLine;
  TextContent({required this.text,required this.numerLine});
  @override
  Widget build(BuildContext context) {
    return Text(
      '${text}(${numerLine})',
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style:MyTheme.themeLight.textTheme.bodyLarge,
    );
  }
}
