import 'package:flutter/material.dart';
import 'package:flutter_app1/1stPage.dart';
import 'package:flutter_app1/Home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'FirstPage',
      routes: {
        '/firstpage' : (context)=> FirstPage(),
        '/home' : (context)=> Home(),
        '/firstpage' : (context)=> FirstPage(),

      },
      home: FirstPage(),
      debugShowCheckedModeBanner: false ,
    );
  }
}


