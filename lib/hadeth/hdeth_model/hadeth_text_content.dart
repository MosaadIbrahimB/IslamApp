import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';

class HadethTextContent extends StatelessWidget {
  String content;
  HadethTextContent({required this.content});
  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style:Theme.of(context).textTheme.bodyLarge,
    );
  }
}
