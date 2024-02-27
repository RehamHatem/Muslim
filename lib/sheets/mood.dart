import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MoodSheet extends StatelessWidget {
  const MoodSheet({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLight=true;
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            children: [
              Text(AppLocalizations.of(context)!.fateh,style: GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.w600,

                color: isLight? Color(0xffB7935F): Colors.black,

              ),),
              Spacer(),
              Icon(Icons.done,size: 30,color: isLight? Color(0xffB7935F): Colors.black),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            children: [
              Text(AppLocalizations.of(context)!.dakn,style: GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: isLight? Colors.black : Color(0xffB7935F),

              ),),
              Spacer(),
              Icon(Icons.done,size: 30,color: isLight? Colors.black : Color(0xffB7935F)),
            ],
          ),
        ),


      ],
    );;
  }
}
