
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kosku/pages/mobile/mainpage.dart';
import 'package:kosku/pages/web/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          return constraints.maxWidth > 900 ? WebMainPage() : MainPage();
        },
      )
      );
  }

  Widget webpage(){
    return Scaffold(
      body: WebMainPage(),
    );
  }

  Widget mobilepage(){
    return Scaffold(
      body: MainPage(),
    );
  }
}