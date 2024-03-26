// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
// ignore: use_key_in_widget_constructors
class MyCounter extends StatefulWidget {
  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
int counter = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Counter'),
      ),
      body:  Center(
        // ignore: unnecessary_brace_in_string_interps
        child: Text('Counter Values => $counter',
        // ignore: prefer_const_constructors
        style: TextStyle(fontSize: 22,color: Colors.deepOrange),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
         setState(() {
            ++counter;
         });
        },
        // ignore: prefer_const_constructors
        child: Icon(Icons.add),
      ),
    );
  }
}