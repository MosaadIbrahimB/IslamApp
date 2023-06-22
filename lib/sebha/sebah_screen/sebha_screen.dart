import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.only(top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: -80,
                  right: 140,
                  child: Image.asset("assets/images/head_sebha_logo.png")),
              Container(child: Image.asset("assets/images/body_sebha_logo.png"))
            ],
          ),
      const    Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("عدد التسبيحات"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: MyTheme.lightPrimary,
                ),
                alignment: Alignment.center,
                width: 80,
                height: 40,
                child: Text(
                  "30",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const  SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: MyTheme.lightPrimary,
                ),
                alignment: Alignment.center,
                width: 150,
                height: 40,
                child: Text(
                  "سبحان الله",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
