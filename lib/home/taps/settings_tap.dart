import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/sheets/language.dart';
import 'package:islami_app/sheets/mood.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/theme_data.dart';


class Settings extends StatelessWidget {
  static const String routName = "sett";

  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppLocalizations.of(context)!.language,
                style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
                textDirection: TextDirection.rtl),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                showModalBottomSheet(
                  isDismissible: true,
                  isScrollControlled: true,
                  context: context, builder:(context) {
                  return Container(
                    height: MediaQuery.of(context).size.height *.6,
                    child: LaguageSheet(),

                  ) ;
                },);
              },
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10, right: 2, left: 10),
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: MyThemeData.primaryColor, width: 2)),
                child: Text("عربي",
                    style: Theme.of(context).textTheme.bodySmall),
              ),
            ),
            SizedBox(height: 30,),
            Text(AppLocalizations.of(context)!.mood,
                style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
                textDirection: TextDirection.rtl),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                showModalBottomSheet(context: context, builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height *.6,
                      child: MoodSheet(),
                  );

                },);
              },
              child:
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10, right: 2, left: 10),
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: MyThemeData.primaryColor, width: 2)),
                child: Text("فاتح",
                    style: Theme.of(context).textTheme.bodySmall,),
              ),
            ),
          ],
        ));
  }
}
