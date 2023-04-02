import 'package:flutter/material.dart';
import 'package:target/pages/cart_page.dart';
import 'package:target/pages/home_page.dart';
import 'package:target/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:target/utils/routes.dart';
import 'package:target/widgets/themes.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context) ,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/" :(context) => const LoginPage(),
        MyRoutes.homeRoute :(context) => const  HomePage(),
        MyRoutes.loginRoute : (context) => const LoginPage(),
        MyRoutes.cartRoute : (context) =>  CartPage(),
      },
    );
  }
}

 
