import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/setting_provider.dart';
import 'package:provider/provider.dart';

class LaguageSheet extends StatelessWidget {
  const LaguageSheet({super.key});

  @override
  Widget build(BuildContext context) {

    var prov=Provider.of<MyProvider>(context);
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  prov.changeLang("ar");

                },
                child: Text(AppLocalizations.of(context)!.ar,style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,

                  color: prov.langCode=="ar"? Color(0xffB7935F): Colors.black,

                ),),
              ),
              Spacer(),
              Icon(Icons.done,size: 30,color: prov.langCode=="ar"? Color(0xffB7935F): Colors.transparent),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  prov.changeLang("en");
                },
                child: Text(AppLocalizations.of(context)!.en,style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: prov.langCode=="ar"? Colors.black : Color(0xffB7935F),

                ),),
              ),
              Spacer(),

              Icon(Icons.done,size: 30,color: prov.langCode=="ar"? Colors.transparent : Color(0xffB7935F)),
            ],
          ),
        ),


      ],
    );
  }
}
