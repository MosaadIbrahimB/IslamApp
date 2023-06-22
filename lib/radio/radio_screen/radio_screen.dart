import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';


class RadioTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/radio_image.png",width: 350,)
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("أذاعة القرأن الكريم",
              style:Theme.of(context).textTheme.displayLarge ,)
          ],),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconPlayRadio( icon:  Icons.skip_previous,),
              IconPlayRadio( icon:  Icons.play_arrow,),
              IconPlayRadio( icon:  Icons.skip_next,),



            ],),
        ],
      ),
    );
  }
}

class IconPlayRadio extends StatelessWidget {
  IconData? icon;
   IconPlayRadio({
    this.icon

  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: MyTheme.lightPrimary,
      size: 60,
    );
  }
}
