import 'package:flutter/material.dart';
import 'package:uriel_dames/views/home/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
      title: 'Uriel Dames',
      theme: ThemeData(
        fontFamily: 'Julius_Sans_One',
        primarySwatch: Colors.grey,
                brightness: Brightness.light,
        hintColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: HomePage(),
    );
  }
}
