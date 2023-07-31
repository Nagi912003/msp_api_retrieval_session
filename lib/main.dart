import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/CatsProvider.dart';
import 'screens/firstpage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CatsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true
        ),
        home: FirstPage(),
      ),
    );
  }
}
