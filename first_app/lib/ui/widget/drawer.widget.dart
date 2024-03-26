import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          DrawerHeader(
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(gradient: LinearGradient(
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: [Colors.white, Colors.deepOrange])),
              // ignore: prefer_const_constructors
              child: Center(
                // ignore: prefer_const_constructors
                child: CircleAvatar(
                  // ignore: prefer_const_constructors
                  backgroundImage: AssetImage('images/log.jpg'),
                  radius: 80,
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
              color: Colors.orange,
            ),
            // ignore: prefer_const_constructors
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.orange,
            ),
            onTap: () {
               Navigator.of(context).pop();
              Navigator.pushNamed(context, '/home');
            },
          ),
            ListTile(
            // ignore: prefer_const_constructors
            title: Text(
              "Realisation",
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 22),
            ),
            // ignore: prefer_const_constructors
            leading: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            // ignore: prefer_const_constructors
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.orange,
            ),
            onTap: () {
               Navigator.of(context).pop();
              Navigator.pushNamed(context, '/projet');
            },
          ),
          // ignore: prefer_const_constructors
          Divider(
            height: 4,
            color: Colors.orange,
          ),
          ListTile(
            // ignore: prefer_const_constructors
            title: Text(
              "Competences",
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 22),
            ),
            // ignore: prefer_const_constructors
            leading: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            // ignore: prefer_const_constructors
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.orange,
            ),
            onTap: () {
               Navigator.of(context).pop();
              Navigator.pushNamed(context, '/competences');
            },
          ),
          // ignore: prefer_const_constructors
          Divider(
            height: 4,
            color: Colors.orange,
          ),
          ListTile(
            // ignore: prefer_const_constructors
            title: Text(
              "A propos",
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 22),
            ),
            // ignore: prefer_const_constructors
            leading: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            // ignore: prefer_const_constructors
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.orange,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/gallery');
            },
          ),
           ListTile(
            // ignore: prefer_const_constructors
            title: Text(
              "Quiz",
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 22),
            ),
            // ignore: prefer_const_constructors
            leading: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            // ignore: prefer_const_constructors
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.orange,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/quiz');
            },
          ),
          ListTile(
            // ignore: prefer_const_constructors
            title: Text(
              "Weather",
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 22),
            ),
            // ignore: prefer_const_constructors
            leading: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            // ignore: prefer_const_constructors
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.orange,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/weather');
            },
          )
        ],
      ),
    );
  }
}
