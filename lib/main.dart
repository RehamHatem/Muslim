import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeeth_datais.dart';
import 'package:islami_app/home/taps/hadeth.dart';
import 'package:islami_app/home/taps/radio.dart';
import 'package:islami_app/home/taps/settings_tap.dart';
import 'package:islami_app/home/taps/tsbeeh.dart';
import 'package:islami_app/providers/setting_provider.dart';
import 'package:islami_app/sura_datails.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'theme_data.dart';

void main (){
  runApp(ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(),
      child: myApp()));
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.langCode),
      theme: MyThemeData.light,
      darkTheme:MyThemeData.dark ,
      themeMode: provider.mood,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName ,
      routes: {
        HomeScreen.routName: (context)=>HomeScreen(),
        SuraDetails.routeName:(context) => SuraDetails(),
        Tasbeh.routName:(context) => Tasbeh(),
        redio.routeName:(context) => redio(),
        Ahadeth.routeName:(context) => Ahadeth(),
        HadeethDetails.routeName:(context) => HadeethDetails(),
        Settings.routName:(context) => Settings(),
      },
    );
  }

  }

