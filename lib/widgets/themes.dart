import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context ) => ThemeData(
      primarySwatch: Colors.blue,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonColor: darkBluishColor,
      accentColor: darkBluishColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 2.0,
        iconTheme: const IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
        //iconTheme: IconThemeData(color: Colors.black), toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6,
      )

  );

  static ThemeData darkTheme(BuildContext context ) => ThemeData(
       brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      buttonColor: lightBluishColor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 2.0,
        iconTheme: const IconThemeData(color: Colors.white),
        //titleTextStyle: TextStyle(color: Colors.white),
        textTheme: Theme.of(context).textTheme,
       //toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6,
      )
  );
  //Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;


}