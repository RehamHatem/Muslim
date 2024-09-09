import 'dart:convert';

import '../home/model/RadioResponse.dart';
import 'package:http/http.dart' as http;


class ApiManger{

//https://mp3quran.net/api/v3/radios?language=eng
  static Future<List<Radios>?>getRadio() async{
    Uri url =Uri.https("mp3quran.net","/api/v3/radios");
    var response=await http.get(url);
    var json=jsonDecode(response.body);
    RadioResponse radioResponse=RadioResponse.fromJson(json);
    print(response.body);
    return radioResponse.radios;

  }

}