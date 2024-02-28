import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/theme_data.dart';

class Tasbeh extends StatefulWidget {
  static const String routName = "tasbeeh";

  Tasbeh({super.key});

  @override
  State<Tasbeh> createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {
  int count = 0;

  List<String> tasbehaName = [
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int counter = 0;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                  height: 100,
                  width: 80,
                  child: Image(
                    image: AssetImage("assets/images/head_sebha_logo.png"),
                  )),
              InkWell(
                onTap: () {

                  checkCount();
                  setState(() {});
                },
                child: Container(
                  height: 234,
                  width: 232,
                  margin: EdgeInsets.only(bottom: 50, top: 70),
                  child: Image(
                      image: AssetImage("assets/images/body_sebha_logo.png")),
                ),
              )
            ],
          ),
          Text(
            AppLocalizations.of(context)!.tasbeehNum,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 69,
            height: 81,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: MyThemeData.primaryColor,
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              "${count}",
              style:Theme.of(context).textTheme.bodyMedium
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 137,
            height: 51,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color:  MyThemeData.primaryColor,
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              "${tasbehaName[counter]}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }


  checkCount() {
    if (count <30){
      count++;
    }
    else if(count == 30) {
      count = 0;
      if ( counter < tasbehaName.length-1) {
        counter++;
      }
      else {
        counter = 0;
      }
    }
  }
}
