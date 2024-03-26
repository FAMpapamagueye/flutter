import 'package:flutter/material.dart';
class CompetencesPage extends StatelessWidget {
  const CompetencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        // ignore: prefer_const_constructors
      // drawer: MyDrawer(),
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title:  Text("Competence"),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        // ignore: prefer_const_constructors
        child: Text("Competence page",
        // ignore: prefer_const_constructors
        style: Theme.of(context).textTheme.headlineLarge,
        ),
        ),
        
      );

  }
}