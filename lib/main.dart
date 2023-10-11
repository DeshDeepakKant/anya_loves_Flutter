import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p2/pages/home_page.dart';
import 'package:p2/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p2/utilis/routes.dart';

// import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // ffinal const  =3.14;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: HomePage(),
        themeMode: ThemeMode.dark,
        theme: ThemeData(primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: "/login",
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
        });
  }
}
