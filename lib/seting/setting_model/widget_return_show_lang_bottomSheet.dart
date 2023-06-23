import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/app_config_provider.dart';

class BottomSheetLanguage extends StatelessWidget {
  String choseOne;
  String choseTwo;
  final VoidCallback selectFunctionOne;
  final VoidCallback selectFunctionTwo;

  BottomSheetLanguage(
      {required this.choseOne,
      required this.choseTwo,
      required this.selectFunctionOne,
      required this.selectFunctionTwo});

  @override
  Widget build(BuildContext context) {
    var provid = Provider.of<AppConfigProvider>(context);

    return Container(
      padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
      height: MediaQuery.of(context).size.width * .5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: selectFunctionOne,
                child: provid.appLanguage == 'en'
                    ? getSelectWidget(context, choseOne)
                    : getUnSelectWidget(context, choseOne),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: selectFunctionTwo,
            child: provid.appLanguage == 'ar'
                ? getSelectWidget(context, choseTwo)
                : getUnSelectWidget(context, choseTwo),
          ),
        ],
      ),
    );
  }

  Widget getSelectWidget(BuildContext context, String text) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style:Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black)
          ),
          Icon(
            Icons.check,
            size: 35,
            color: Colors.black,
          )
        ],
      ),
    );
  }

  Widget getUnSelectWidget(BuildContext context, String text) {
    return Container(
        width: MediaQuery.of(context).size.width * .9,

        child: Text(text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black)
        ));
  }
}
