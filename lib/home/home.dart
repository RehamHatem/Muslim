import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/taps/hadeth.dart';
import 'package:islami_app/home/taps/quran.dart';
import 'package:islami_app/home/taps/radio.dart';
import 'package:islami_app/home/taps/tsbeeh.dart';

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

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "إسلامي",
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
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
            backgroundColor: Color(0xffB7935F),
            showUnselectedLabels: false,
            showSelectedLabels: false,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
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
  ];
}