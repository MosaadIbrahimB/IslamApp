import 'package:flutter/material.dart';
import 'package:islam_app/model/quran/soura_details_model.dart';
import 'package:islam_app/screen/quran/sura_details_screen.dart';

class TextSouraNameModel extends StatelessWidget {
  String name;
  int numberSoura;
  TextSouraNameModel({required this.name,required this.numberSoura});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
Navigator.of(context).pushNamed(SouraDetails.routeName,
    arguments: SuraDetailsArgsModel(name:name,indx: numberSoura));

      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
