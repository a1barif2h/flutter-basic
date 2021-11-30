import 'package:flutter/material.dart';
import 'package:flutter_catatlog/pages/home_page.dart';
import 'package:flutter_catatlog/pages/login_page.dart';
import 'package:flutter_catatlog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoute.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoute.homeRoute: (context) => HomePage(),
        MyRoute.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
