// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_myapp_first/home_page.dart';
import 'package:flutter_myapp_first/login_page.dart';
import 'package:flutter_myapp_first/pages/welcome_page.dart';
import 'package:flutter_myapp_first/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: MyRoutes.homeRoutes,
      routes: {
        "/": (contxt) => WellcomePage(),
        MyRoutes.homeRoutes: (contxt) => HomePage(),
        MyRoutes.LoginRoutes: (contxt) => LoginPage(),
      },
    );
  }
}
