import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:air_n_there/constants.dart';
import 'package:air_n_there/screens/home/home_screen.dart';
import 'package:air_n_there/screens/Welcome/welcome_screen.dart';
import 'package:air_n_there/screens/flights/all_flights.dart';
import 'package:air_n_there/screens/flights/my_flights.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travels App',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        textTheme:
            GoogleFonts.poppinsTextTheme().apply(displayColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: HomeScreen(),
      home: WelcomeScreen(),
      // home: MyFlights(),
    );
  }
}
