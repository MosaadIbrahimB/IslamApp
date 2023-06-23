import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/app_config_provider.dart';

class TextSettingLangAndTheme extends StatelessWidget {
  String title;
  String text;



  TextSettingLangAndTheme({required this.title,required this.text});
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(right:MediaQuery.of(context).size.width*.03),
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Container(
          padding:const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 15),
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .02,
              vertical: MediaQuery.of(context).size.height * .02),
          decoration: BoxDecoration(
              color:
                  provider.isThemeModeDark()?
                  Colors.grey:
              Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Icon(
                Icons.arrow_drop_down_outlined,
                size: 35,
              )
            ],
          ),
        ),
      ],
    );
  }



}