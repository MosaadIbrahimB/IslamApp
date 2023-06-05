import 'package:flutter/material.dart';
import 'package:islam_app/model/quran/list_quran_model.dart';
import 'package:islam_app/model/quran/soura_name_text_model.dart';
import 'package:islam_app/model/theme_model.dart';

class QuranTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.all(8),
      child: Center(

        child: Column(children: [
          Image.asset("assets/images/qur2an_screen_logo.png",height: 200,),
          const divider_row(),
          Text('Sura Name',style: Theme.of(context).textTheme.displayMedium,),
          const divider_row(),
          Expanded(
            child: ListView.separated
              (
              itemBuilder: (c,i)=>TextSouraNameModel(name: souraNames[i],numberSoura: i),
                separatorBuilder: (c,i)=>divider_row(),
                itemCount: souraNames.length),
          ),

        ],),
      ),
    );
  }
}

class divider_row extends StatelessWidget {
  const divider_row({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: MyTheme.lightPrimary,
      thickness: 2,
    );
  }
}
