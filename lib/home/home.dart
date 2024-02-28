import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/taps/hadeth.dart';
import 'package:islami_app/home/taps/quran.dart';
import 'package:islami_app/home/taps/radio.dart';
import 'package:islami_app/home/taps/settings_tap.dart';
import 'package:islami_app/home/taps/tsbeeh.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/setting_provider.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  static const String routName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  @override
  Widget build(BuildContext context) {
var provider=Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackgroundImagePath()),
              fit: BoxFit.fill)),
      child: Scaffold(

        appBar: AppBar(

          title: Text(
            AppLocalizations.of(context)!.appName,
          ),
        ),
        body: taps[index],

        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index=value;
              setState(() {

              });

            },

            iconSize: 30,
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),label: ""),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),label: ""),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),label: ""),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "rr"),
            ]),
      ),
    );
  }
  List<Widget>taps=[
    Quraan(),
    Tasbeh(),
    Ahadeth(),
    redio(),
    Settings(),
  ];
}