import 'package:flutter/material.dart';
import 'package:islam_app/model/theme_model.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counterTasbeh = 0;
  double rotate=200;
  int indx=0;
  List<String> tasbeh=['سبحان الله','الحمد لله','الله اكبر','لا اله الا الله'];

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.only(top: h * .09),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: h * -.09,
                  right: w - w * .7,
                  child: Container(
                      height: h * .13,
                      child: Image.asset("assets/images/head_sebha_logo.png"))),
              Transform.rotate(
                angle: -rotate,
                child: Container(
                    height: h * .3,
                    child: Image.asset("assets/images/body_sebha_logo.png")),
              )
            ],
          ),

          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "عدد التسبيحات",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(fontSize: 25, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
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
                  counterTasbeh.toString(),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap:CounterTesbeh,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffB7935F),
                  ),
                  alignment: Alignment.center,
                  width: 150,
                  height: 40,
                  child: Text(
                    tasbeh[indx],
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  CounterTesbeh() {
    if (counterTasbeh == 5) {
      counterTasbeh = 0;
      indx==tasbeh.length-1?
      indx=0:indx++;
    } else {
      counterTasbeh++;
    }
    rotate++;
    setState(() {});
  }
}
