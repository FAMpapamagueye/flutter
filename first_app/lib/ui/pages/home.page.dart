import 'package:first_app/ui/widget/drawer.widget.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      drawer: MyDrawer(),
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title:  Text("Papa Magueye Fam Lamp Devs "),
      ),
      
      body:Center(
        
        child: Column(
          
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [
                  Image.asset(
          "images/2.jpeg",
            height: 400,
            width: 1000,
          ),
                  const CircularProgressIndicator(),
                      // ignore: prefer_const_constructors
                      Text("""    
        Je suis un développeur Fullstack web et mobile passionné, âgé de 25 ans, avec une solide expérience dans la conception et le développement d applications web et mobiles. Ma passion pour la technologie et ma capacité à résoudre les problèmes mont permis de créer des solutions innovantes et efficaces pour mes clients.""",
      // ignore: prefer_const_constructors
      style:  TextStyle(fontSize: 20.0,fontFamily: 'CustomFont')),
      
                ],
     
              ),
              ),
    
        
      
      
     );

  }
}