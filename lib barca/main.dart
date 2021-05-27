import 'package:flutter/material.dart';
import 'package:uriel_dames/controllers/page_view_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uriel Dames',
      theme: ThemeData(
        fontFamily: 'Julius_Sans_One',
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        hintColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: PageViewController(),
    );
  }
}
