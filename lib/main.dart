import 'package:flutter/material.dart';
import 'package:thirty_days_of_flutter/pages/login_page.dart';
import 'package:thirty_days_of_flutter/utilis/routes.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
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
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      // initialRoute: "/home",
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        // "/login" : (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
