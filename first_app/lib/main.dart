// ignore_for_file: prefer_const_constructors

import 'package:first_app/ui/pages/Gallery.pages.dart';
import 'package:first_app/ui/pages/competences.pages.dart';
import 'package:first_app/ui/pages/home.page.dart';
import 'package:first_app/ui/pages/quiz.dart';
import 'package:first_app/ui/pages/realisation.pages.dart';
import 'package:first_app/ui/pages/weather.page.dart';
import 'package:flutter/material.dart';

void main() =>  runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_literals_to_create_immutables
      routes: {
        ('/home'):(context)=>HomePage(),
         ('/projet'):(context)=>Myrealisation(),
            ('/quiz'):(context)=>Quiz(),
               ('/weather'):(context)=>MyWeather(),
        ('/competences'):(context)=>CompetencesPage(),
        ('/gallery'):(context)=>GalleryPage(),

      },
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
    initialRoute: "/home",
    );
  }
}

