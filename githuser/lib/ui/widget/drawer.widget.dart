import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
        children:<Widget>[
          DrawerHeader(
            decoration:
             BoxDecoration(
              gradient:
               LinearGradient(
                colors: [Colors.white,
                Colors.blue])),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/log.jpg"),
              ),
            )),
          ListTile(
            // ignore: prefer_const_constructors
            title: Text(
              "Accueil",
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 22),
            ),
            // ignore: prefer_const_constructors
            leading: Icon(
              Icons.home,
              color: Color.fromARGB(255, 239, 224, 2),
            ),
            // ignore: prefer_const_constructors
            trailing: Icon(
              Icons.arrow_right,
              color: Color.fromARGB(255, 239, 224, 2),
            ),
            onTap: () {
               Navigator.of(context).pop();
              Navigator.pushNamed(context, '/home');
            },
          ),
          // users menu drawer
              ListTile(
            // ignore: prefer_const_constructors
            title: Text(
              "Users",
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 22),
            ),
            // ignore: prefer_const_constructors
            leading: Icon(
              Icons.person,
              color: Color.fromARGB(255, 239, 224, 2),
            ),
            // ignore: prefer_const_constructors
            trailing: Icon(
              Icons.arrow_right,
              color: Color.fromARGB(255, 239, 224, 2),
            ),
            onTap: () {
               Navigator.of(context).pop();
              Navigator.pushNamed(context, '/users');
            },
          ),
        ])
        ,);
        
    
  }
}
