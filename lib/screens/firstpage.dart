import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/cat.dart';
class FirstPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async{
            http.Response response=await http.get(Uri.parse('https://cataas.com/api/cats'));
            List<dynamic> data=  jsonDecode(response.body);

            List <Cat> cats=[];
            for (var item in data) {
              cats.add(Cat.fromJson(item));
            }
            print(cats[0].id);
            print(cats[0].tags.toString());
            print(cats[0].owner);
            print(cats[0].createdAt);
            print(cats[0].updatedAt);

          },
          child: const Text('Click here'),
        )
      )
    );
  }
}
