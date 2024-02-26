import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/hadeeth_datais.dart';
import 'package:islami_app/home/hadeeth_model.dart';

class Ahadeth extends StatefulWidget {
  static const String routeName="hadeeth";
  Ahadeth({super.key});

  @override
  State<Ahadeth> createState() => _AhadethState();
}

class _AhadethState extends State<Ahadeth> {
List<HadeethModel>All=[];

  @override
  Widget build(BuildContext context) {
    if (All.isEmpty){
      loadAhadeethFile();
    }
    return Column(
      children: [
        Center(child: Image(image: AssetImage("assets/images/hadeth_logo.png"))),
        Divider(thickness: 3,
        color: Color(0xffB7935F),),
        Text("الأحاديث",style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600,)),
        Divider(thickness: 3,
          color: Color(0xffB7935F),),

        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(thickness: 1,indent: 50, endIndent: 50, color: Color(0xffB7935F),);
            },
            itemBuilder: (context, index) {
            return Center(
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, HadeethDetails.routeName,arguments: All[index]);
                },
                child: Text(All[index].title,style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 25
                ),),
              ),
            ) ;
          },itemCount: All.length,),
        )

      ],
    );
  }

  loadAhadeethFile()async{
    await rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeeth){
      List<String>file=ahadeeth.split("#");
      for (int i=0;i<file.length;i++){
        String hadeeth=file[i];
        List <String >hadeethLines=hadeeth.trim().split("\n");
        String title=hadeethLines[0];
        hadeethLines.removeAt(0);
        List<String> content= hadeethLines;
        HadeethModel item=HadeethModel(title: title, content: content);
        All.add(item);
      }
      setState(() {

      });

    });

  }
}
