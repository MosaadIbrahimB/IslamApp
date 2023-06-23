import 'package:flutter/cupertino.dart';
import 'package:islam_app/provider/app_config_provider.dart';

class ImagBackgroundWidget extends StatelessWidget {
  const ImagBackgroundWidget({
    super.key,
    required this.provider,
  });

  final AppConfigProvider provider;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  provider.isThemeModeDark()?
    Image.asset(
      "assets/images/dark_bg.png",
      fit: BoxFit.fill,
      width: double.infinity,
      height: double.infinity,
    ):
    Image.asset(
      "assets/images/default_bg.png",
      fit: BoxFit.fill,
      width: double.infinity,
      height: double.infinity,
    ),);
  }
}

