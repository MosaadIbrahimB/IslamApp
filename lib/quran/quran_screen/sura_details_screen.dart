import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam_app/home_screen_islam_app.dart';
import 'package:islam_app/model/ImagBackgroundWidget.dart';
import 'package:islam_app/model/theme_model.dart';
import 'package:islam_app/provider/app_config_provider.dart';
import 'package:islam_app/quran/quran_model/quran_text_content.dart';
import 'package:islam_app/quran/quran_model/soura_details_model.dart';
import 'package:provider/provider.dart';
//خاص بعرض محتوى  السورة
class SouraDetails extends StatefulWidget {
  static const String routeName = 'SouraDetails';

  @override
  State<SouraDetails> createState() => _SouraDetailsState();
}

class _SouraDetailsState extends State<SouraDetails> {
  List<String> newList = [];

  @override
  Widget build(BuildContext context) {
    var arg =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArgsModel;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    if (newList.isEmpty) {
      loadFile(arg.indx);
    }
    var provider=Provider.of<AppConfigProvider>(context);

    return Stack(
      children: [
        ImagBackgroundWidget(provider: provider),
        Scaffold(
          appBar: AppBar(
            title: Text(
              '${arg.name}',
              style: provider.isThemeModeDark()?
              MyTheme.darkTheme.textTheme.displayLarge:
              Theme.of(context).textTheme.displayLarge,
            ),
          ),
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                  color:
                  provider.isThemeModeDark()?
                  MyTheme.darkPrimary:
                  MyTheme.colorWhiteTransparant,
                  borderRadius: BorderRadius.circular(24)
              ),
              margin: EdgeInsets.only(bottom: height * .06, top: height * .04),
              padding: EdgeInsets.only(top: 15),
              width: width * .9,
              height: height * .8,
              child: newList.isEmpty
                  ? CircularProgressIndicator()
                  : ListView.builder(
                      itemBuilder: (c, i) =>
                          QuranTextContent(text: newList[i], numerLine: i + 1),
                      itemCount: newList.length,
                    ),
            ),
          ),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString("assets/file/${index + 1}.txt");
    List<String> line = fileContent.split('\n');
    newList = line;
    setState(() {});
  }
}
