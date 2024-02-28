
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../theme_data.dart';


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
        Text(AppLocalizations.of(context)!.ezaah,style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_previous,size: 50,color:  MyThemeData.primaryColor),
            Icon(Icons.play_arrow,size: 70,color:  MyThemeData.primaryColor),
            Icon(Icons.skip_next,size: 50,color:  MyThemeData.primaryColor),
          ],
        )
      ],
    );
  }
}
