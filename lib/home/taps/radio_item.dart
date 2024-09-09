import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../theme_data.dart';
import '../model/RadioResponse.dart';


class RadioItem extends StatefulWidget {
  Radios radios;
  late AudioPlayer audioPlayer;
   RadioItem({super.key,required this.radios,required this.audioPlayer});

  @override
  State<RadioItem> createState() => _RadioItemState();
}

class _RadioItemState extends State<RadioItem> {
  // late AudioPlayer audioPlayer;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(widget.radios?.name??AppLocalizations.of(context)!.ezaah,style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed :() {
              setState(() {
                play();
              });
            } ,icon: Icon(Icons.play_arrow,size: 70) ,color:  MyThemeData.primaryColor),
            IconButton(onPressed:() {
              setState(() {
                pause();
              });
            },icon: Icon(Icons.pause,size: 50),color:  MyThemeData.primaryColor),
          ],
        )
      ],
    );
  }

  void play()async{
    await widget.audioPlayer.play(UrlSource(widget.radios.url??""));
  }

  void pause()async{
    await widget.audioPlayer.stop();
  }
}
