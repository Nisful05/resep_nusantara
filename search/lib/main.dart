import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search/SearchScreen.dart';
import 'package:search/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SearchScreen(),
        );
  }
}

