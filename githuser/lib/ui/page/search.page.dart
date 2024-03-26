import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Search extends StatefulWidget {
  
 String input;
 Search(this.input);
  @override
  State<Search> createState() => _SearchState();
}


class _SearchState extends State<Search> {
  String input="";
  var galleryData;
   List<dynamic> items=[];
   @override
   void initState() {
     super.initState();
     getSeach();
   }
  getSeach(){
    String url ="https://api.github.com/search/users?q=${widget.input}";
     http.get(Uri.parse(url)).then((resp){
    //  print(resp.body);
    setState(() {
       galleryData=json.decode(resp.body);
      items=galleryData['items'];
      // if(galleryData['totalHits']% size==0){
      //       total=galleryData['totalHits']~/size;
      // }else total = (galleryData['totalHits']/size + 1).floor();

      
    });
    print(items);
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('${widget.input}')),
        body: (galleryData==null)?CircularProgressIndicator():
          Expanded(
            child: ListView.builder(
              itemCount:  (galleryData==null)?0:items.length,
              itemBuilder: (context,index){
                return Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text('${items[index]['login']}',
                        style: TextStyle(fontSize: 22),)
                      ),
                    ),
                     Container(
                width: double.infinity,
                padding: EdgeInsets.only(right: 5,left: 5,top: 0,bottom: 0),
                child: Card(
                  child: Image.network(items[index]['avatar_url']),
                ),
               )
                  ],
                );
              }),
          )
        
    );
  }
}