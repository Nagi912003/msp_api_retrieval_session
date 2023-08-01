import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class CatsWebServices{
  Future<List<dynamic>> getAllCats() async {
    try{
      http.Response response=await http.get(Uri.parse('https://cataas.com/api/cats'));
      List<dynamic> data=  jsonDecode(response.body);
      return data;

    }
    catch(e){
      if (kDebugMode) {
        print(e.toString());
      }
      return [];
    }
  }
}