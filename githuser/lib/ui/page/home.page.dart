import 'package:flutter/material.dart';
import '../widget/drawer.widget.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
       appBar:AppBar(
        title: Text('Home',style: TextStyle(fontSize: 22,color: Colors.blue),),
        
       ) ,
       body: Center(
        child: Text('home page .....'),
       ),
    );
  }
}