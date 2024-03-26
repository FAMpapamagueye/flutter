// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class GalleryDataPage extends StatefulWidget {
  // const GalleryDataPage({super.key});
  String keyWords;
  @override

  GalleryDataPage(this.keyWords);

  @override
  State<GalleryDataPage> createState() => _GalleryDataPageState();
}

class _GalleryDataPageState extends State<GalleryDataPage> {
  int currentPage=1;
  int size=5;
  int total=0;
  ScrollController _scrollcontroller = ScrollController();
  List<dynamic> hits=[];
  var galleryData;
  void initState() {
    super.initState();
      getData();
      _scrollcontroller.addListener(() {
      if(_scrollcontroller.position.pixels == _scrollcontroller.position.maxScrollExtent){
        if(currentPage <total ){
        setState(() {
            ++currentPage;
        });
          getData();
        }
      }
    });
  }
  getData(){
    String url="https://pixabay.com/api/?key=42507713-4e5d0d06d2cd12fdebae9b96f&q=${widget.keyWords}&page=${currentPage}&per_page=${size}";
    http.get(Uri.parse(url)).then((resp){
     
    setState(() {
       galleryData=json.decode(resp.body);
      hits=galleryData['hits'];
      if(galleryData['totalHits']% size==0){
            total=galleryData['totalHits']~/size;
      }else total = (galleryData['totalHits']/size + 1).floor();

      
    });
    print(hits);
    }).catchError((err){
      print(err);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("${widget.keyWords} : ${currentPage}/ ${total}" ,style: TextStyle(fontSize: 22),)),
      body: (galleryData==null)?CircularProgressIndicator():
      ListView.builder(
        itemCount: (galleryData==null)?0:hits.length,
        controller: _scrollcontroller,
        itemBuilder: (context,index){
          return  Column(
            children: [
             Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
               child: Card(
                child: Padding(
                  
                  padding: const EdgeInsets.all(10),
                  child: Center(child: Text(hits[index]['tags'],style: TextStyle(fontSize: 22,color: Colors.white,),)),
                ),
                color: Colors.deepOrange,
               ),
               
             ),
             Container(
              width: double.infinity,
              padding: EdgeInsets.only(right: 5,left: 5,top: 0,bottom: 0),
              child: Card(
                child: Image.network(hits[index]['webformatURL']),
              ),
             )
            ],
          );
        })
    );
  }
}