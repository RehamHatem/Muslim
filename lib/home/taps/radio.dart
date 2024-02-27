
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class redio extends StatelessWidget {
  static const String routeName="rad";
  const redio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412, height: 222,
            margin: EdgeInsets.only(top: 150,bottom: 40),
            child: Image(image: AssetImage("assets/images/radio_image.png"))),
        Text(AppLocalizations.of(context)!.ezaah,style: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Color(0xff242424)
        ),),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_previous,size: 50,color: Color(0xffB7935F)),
            Icon(Icons.play_arrow,size: 70,color: Color(0xffB7935F)),
            Icon(Icons.skip_next,size: 50,color: Color(0xffB7935F)),
          ],
        )
      ],
    );
  }
}
