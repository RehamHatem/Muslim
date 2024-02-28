import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/setting_provider.dart';
import 'package:provider/provider.dart';

import '../theme_data.dart';

class MoodSheet extends StatelessWidget {
  const MoodSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provi=Provider.of<MyProvider>(context);
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  provi.changemood(ThemeMode.light);
                },
                child: Text(AppLocalizations.of(context)!.fateh,style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,

                  color: provi.mood==ThemeMode.light? MyThemeData.primaryColor: MyThemeData.secondaryColor,

                ),),
              ),
              Spacer(),
              Icon(Icons.done,size: 30,color: provi.mood==ThemeMode.light? MyThemeData.primaryColor: Colors.transparent),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  provi.changemood(ThemeMode.dark);
                },
                child: Text(AppLocalizations.of(context)!.dakn,style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: provi.mood==ThemeMode.light? MyThemeData.secondaryColor : MyThemeData.primaryColor,

                ),),
              ),
              Spacer(),
              Icon(Icons.done,size: 30,color: provi.mood==ThemeMode.light? Colors.transparent : MyThemeData.primaryColor),
            ],
          ),
        ),


      ],
    );;
  }
}
