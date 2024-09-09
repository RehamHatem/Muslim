
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/taps/radio_item.dart';
import 'package:islami_app/network/apiManeger.dart';

import '../../theme_data.dart';
import '../model/RadioResponse.dart';


class redio extends StatefulWidget {
  static const String routeName="rad";
  const redio({super.key});

  @override
  State<redio> createState() => _redioState();
}

class _redioState extends State<redio> {
  late AudioPlayer audioPlayer;
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer=AudioPlayer();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Radios>?>(future: ApiManger.getRadio(), builder: (context, snapshot) {
      if(snapshot.connectionState==ConnectionState.waiting){
        return Center(child: CircularProgressIndicator(),);

      }
      else if(snapshot.hasError){
        return Center(child: Text(snapshot.error.toString()),);
      }
      else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height*.3,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,bottom: MediaQuery.of(context).size.height*.005),
                child: Image(image: AssetImage("assets/images/radio_image.png"))),
            SizedBox(
              height: MediaQuery.of(context).size.height*.4,
              child: ListView.builder(itemBuilder: (context, index) {

                return RadioItem(radios: snapshot.data![index],audioPlayer: audioPlayer,);
              },itemCount: snapshot.data?.length??0,
              scrollDirection: Axis.horizontal,physics: PageScrollPhysics(),itemExtent:MediaQuery.of(context).size.width,),
            ),
          ],
        );
      }
    },);
  }
}
