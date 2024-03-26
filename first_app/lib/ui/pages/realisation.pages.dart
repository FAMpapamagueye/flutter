import 'package:flutter/material.dart';
class Myrealisation extends StatefulWidget {
  const Myrealisation({super.key});

  @override
  State<Myrealisation> createState() => _MyrealisationState();
}

class _MyrealisationState extends State<Myrealisation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Realisation"),
      ),
      body: Center(
        // ignore: prefer_const_constructors
        child: Text("Realisation page",
        // ignore: prefer_const_constructors
        style: Theme.of(context).textTheme.headlineLarge,
        ),
        ),
    );
  }
}