import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/hadeeth_model.dart';
import 'package:provider/provider.dart';

import '../providers/setting_provider.dart';

class HadeethDetails extends StatelessWidget {
  static const String routeName="datails";
  HadeethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var modal=ModalRoute.of(context)!.settings.arguments as HadeethModel;
    var provider=Provider.of<MyProvider>(context);

    return Stack(
      children: [
        Image.asset(provider.getBackgroundImagePath(),fit: BoxFit.fill,width: double.infinity),
        Scaffold(

        appBar: AppBar(

          title: Text(modal.title,
              ),
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
                style: Theme.of(context).textTheme.bodyMedium
              );
            },
            itemCount: modal.content.length ,
          ),
        ),
      ),],
    );

  }
}
