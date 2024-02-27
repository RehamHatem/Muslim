import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{
  String langCode="ar";
  changeLang(String code){
    langCode=code;
    notifyListeners();
  }
}