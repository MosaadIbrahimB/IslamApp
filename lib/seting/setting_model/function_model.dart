import 'package:flutter/material.dart';
import 'package:islam_app/seting/setting_model/widget_return_show_lang_bottomSheet.dart';
import 'package:islam_app/seting/setting_model/widget_return_show_theme_bottomSheet.dart';

void showLangBottomSheet({
  required BuildContext context,
  required String choseOne,
  required String choseTwo,
  required VoidCallback selectFunctionOne,
  required VoidCallback selectFunctionTwo,
}) {

  showModalBottomSheet(
    context: context,
    builder: (context) => BottomSheetLanguage(
      choseOne: choseOne,
      choseTwo: choseTwo,
      selectFunctionOne: selectFunctionOne,
      selectFunctionTwo: selectFunctionTwo,
    ),
  );

}


void showThemeBottomSheet({
  required BuildContext context,
  required String choseOne,
  required String choseTwo,
  required VoidCallback selectFunctionOne,
  required VoidCallback selectFunctionTwo,
}) {

  showModalBottomSheet(
context: context,
    builder: (context) => BottomSheetTheme(
      choseOne: choseOne,
      choseTwo: choseTwo,
      selectFunctionOne: selectFunctionOne,
      selectFunctionTwo: selectFunctionTwo,
    ),
  );

}
