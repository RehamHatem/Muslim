import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/taps/radio.dart';
import 'package:islami_app/home/taps/tsbeeh.dart';
import 'package:islami_app/sura_datails.dart';

import 'home/home.dart';


void main (){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName ,
      routes: {
        HomeScreen.routName: (context)=>HomeScreen(),
        SuraDetails.routeName:(context) => SuraDetails(),
        Tasbeh.routName:(context) => Tasbeh(),
        redio.routeName:(context) => redio(),
      },
    );
  }

  }

