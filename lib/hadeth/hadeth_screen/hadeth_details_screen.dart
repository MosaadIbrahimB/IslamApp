import 'package:flutter/material.dart';

import 'package:islam_app/model/theme_model.dart';
import 'package:islam_app/provider/app_config_provider.dart';
import 'package:provider/provider.dart';


import '../../model/ImagBackgroundWidget.dart';
import '../hdeth_model/hadeth_model.dart';
import '../hdeth_model/hadeth_text_content.dart';

//خاص بعرض محتوى  الحديث
class HadethDetails extends StatefulWidget {
  static const String routeName = 'HadethDetails';

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var provider=Provider.of<AppConfigProvider>(context);

    return Stack(
      children: [
        ImagBackgroundWidget(provider: provider),
        Scaffold(
          appBar: AppBar(
            title: Text(
              '${arg.title}',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          body: Center(
            child: arg.content.isEmpty
                ? CircularProgressIndicator()
                : Container(
                    decoration: BoxDecoration(
                        color:  provider.isThemeModeDark()?
                        MyTheme.darkPrimary:
                        MyTheme.colorWhiteTransparant,
                        borderRadius: BorderRadius.circular(24)),
                    margin: EdgeInsets.only(
                        bottom: height * .06, top: height * .04),
                    width: width * .9,
                    height: height * .8,
                    child: ListView.builder(
                      itemBuilder: (c, i) =>
                          HadethTextContent(content: arg.content[i]),
                      itemCount: arg.content.length,
                    ),
                  ),
          ),
        ),
      ],
    );
  }


}
