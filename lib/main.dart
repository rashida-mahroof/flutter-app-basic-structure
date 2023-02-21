import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_note/Application/Core/colors/colors.dart';

import 'Presentation/main-page/screen-main-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Note App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: backgroundColor,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.grey),
          bodyText2: TextStyle(color: Colors.white)
          )
      ),
      home:  ScreenMainPage(),
    );
  }
}

 