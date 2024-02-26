import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/hadeeth_model.dart';

class HadeethDetails extends StatelessWidget {
  static const String routeName="datails";
  HadeethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var modal=ModalRoute.of(context)!.settings.arguments as HadeethModel;

    return Stack(
      children: [
        Image.asset("assets/images/default_bg.png",fit: BoxFit.fill,width: double.infinity),
        Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black, size: 30),
          centerTitle: true,
          title: Text(modal.title,
              style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black)),
        ),
        body:Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.5), borderRadius: BorderRadius.circular(25) ),
          child: ListView.builder(

            itemBuilder: (context, index) {
              return Text(
                "${modal.content}",textDirection: TextDirection.rtl,

                textAlign: TextAlign.center,
                style: GoogleFonts.elMessiri(
                  color: Colors.black,
                  fontSize: 25,
                ),
              );
            },
            itemCount: modal.content.length ,
          ),
        ),
      ),],
    );

  }
}
