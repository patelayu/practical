import 'package:flutter/material.dart';
import 'package:untitled33/screen/busines_page.dart';
import 'package:untitled33/screen/detai_screen.dart';
import 'package:untitled33/screen/enterrainment_page.dart';
import 'package:untitled33/screen/helth_page.dart';
import 'package:untitled33/screen/home_page.dart';
import 'package:untitled33/screen/science_page.dart';
import 'package:untitled33/screen/splash_page.dart';
import 'package:untitled33/sport_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        'HomePage': (context) => const HomePage(),
        'DetailPage': (context) => const DetailPage(),
        'BusinessPage': (context) => const BusinessPage(),
        'EntertainmentPage': (context) => const EntertainmentPage(),
        'HealthPage': (context) => const HealthPage(),
        'SportsPage': (context) => const SportsPage(),
        'SciencePage': (context) => const SciencePage(),
      },
    ),
  );
}