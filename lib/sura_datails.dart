import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "suraname";

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      readSuraFile(suraModel.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black, size: 30),
          centerTitle: true,
          title: Text(suraModel.name,
              style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black)),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25) ),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1,
                indent: 50,
                endIndent: 50,
              );
            },
            itemBuilder: (context, index) {
              return Text(
                "${verses[index]} (${index+1})",textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: GoogleFonts.elMessiri(
                  color: Colors.black,
                  fontSize: 25,
                ),
              );
            },
            itemCount: verses.length - 1,
          ),
        ),
      ),
    );
  }

  readSuraFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLine = sura.split("\n");
    verses = suraLine;
    print(verses);
    setState(() {});
  }
}
