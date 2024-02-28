import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/providers/setting_provider.dart';
import 'package:islami_app/sura_model.dart';
import 'package:islami_app/theme_data.dart';
import 'package:provider/provider.dart';

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
    var provider=Provider.of<MyProvider>(context);

    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      readSuraFile(suraModel.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackgroundImagePath()),
              fit: BoxFit.fill)),
      child: Scaffold(

        appBar: AppBar(
          title: Text(suraModel.name,),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25) ),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1.5,
                indent: 50,
                endIndent: 50,color: MyThemeData.primaryColor,
              );
            },
            itemBuilder: (context, index) {
              return Text(
                "${verses[index]} (${index+1})",textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              );
            },
            itemCount: verses.length ,
          ),
        ),
      ),
    );
  }

  readSuraFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLine = sura.split("\n");
    verses = suraLine;
    // print(verses);
    setState(() {});
  }
}
