import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../quran/quran_model/divider_row.dart';
import '../hdeth_model/hadeth_model.dart';
import '../hdeth_model/hadeth_text_model.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> newListHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (newListHadeth.isEmpty) {
      loadHadesFile();
    }
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(
        child: newListHadeth.isEmpty
            ? const CircularProgressIndicator()
            : Column(
                children: [
                  Image.asset(
                    "assets/images/hadeth_logo.png",
                    height: 200,
                  ),
                  const DividerRow(),
                  Text(
                    AppLocalizations.of(context)!.hadethName,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const DividerRow(),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (c, i) =>
                            TextHadethNameModel(
                                hadethModel: newListHadeth[i]),
                        separatorBuilder: (c, i) => DividerRow(),
                        itemCount: newListHadeth.length
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  void loadHadesFile() async {
    int i;
    String content, title;
    List<String> allHadeth;
    List<String> singleHadeth;
    content = await rootBundle.loadString('assets/file/ahadeth.txt');
    allHadeth = content.split('#\r\n');
    for (i = 0; i < allHadeth.length; i++) {
      singleHadeth = allHadeth[i].split('\n');
      title = singleHadeth[0];
      singleHadeth.removeAt(0);
      HadethModel hadethSelect = HadethModel(title: title, content: singleHadeth);
      //هنا بيتم اضافة العناصر
      newListHadeth.add(hadethSelect);
      setState(() {});
    }
  }
}
