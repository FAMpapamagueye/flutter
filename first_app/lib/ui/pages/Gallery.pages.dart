import 'package:first_app/ui/pages/GalleryDataPage.dart';
import 'package:flutter/material.dart';
class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {

  String keywords='';
  @override

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        // ignore: prefer_const_constructors
      // drawer: MyDrawer(),
            appBar:AppBar(title: Text(keywords),backgroundColor: Colors.deepOrangeAccent,),
      // ignore: prefer_const_constructors
      body: Column(
  
        children: [
          Container(child: TextField(
            onChanged: (value) {
              setState(() {
                keywords=value;
              });
            }
          ) ,
          padding: EdgeInsets.all(10),
          ),
          Container(
            color:Colors.deepOrange,
            width: double.infinity,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, PageRouteBuilder(pageBuilder:(_,__,___)=> GalleryDataPage(keywords)));
            }, 
          child: Center(child: Text("Get Images",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
            
            
            ),
          )
        ],
      )
        
      );

  }
}