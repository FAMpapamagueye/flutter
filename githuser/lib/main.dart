import 'package:flutter/material.dart';
import 'ui/page/home.page.dart';
import 'ui/page/users.page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_literals_to_create_immutables
      routes: {
        ('/home'):(context)=>HomePage(),
        ('/users'):(context)=>UsersPage()
        //  ('/projet'):(context)=>Myrealisation(),
        //     ('/quiz'):(context)=>Quiz(),
        //        ('/weather'):(context)=>MyWeather(),
        // ('/competences'):(context)=>CompetencesPage(),
        // ('/gallery'):(context)=>GalleryPage(),

      },
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    initialRoute: "/home",
    );
  }
}

