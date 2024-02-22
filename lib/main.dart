import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      },
    );
  }

  }

