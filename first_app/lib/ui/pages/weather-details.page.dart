// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:intl/intl.dart';
class WeatherDetails extends StatefulWidget {

  String city="";
  // ignore: use_key_in_widget_constructors
  WeatherDetails(this.city);
  @override
  State<WeatherDetails> createState() => _WeatherDetailsState();
}

class _WeatherDetailsState extends State<WeatherDetails> {
var data;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('------------------------------------------------------------------------');
    getData(widget.city);
  }

getData(String city){
  print('********************************************************************** ${city}');
  String url='http://api.openweathermap.org/data/2.5/forecast?q=${widget.city}&appid=d3d8f01b711c5090c1cd2aa3b1506e2a' ;
 http.get(Uri.parse(url)).then((resp){
    setState(() {
        print(resp.body);
      data=jsonDecode(resp.body);
    });
}).catchError((err){
 print(err);
});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('meteo de la localite ${widget.city}'),
      ),
      body: (data==null)?Center(
        child: CircularProgressIndicator(),
      ):ListView.builder(
        itemCount: data==null ? 0 : data['list'].length,
        itemBuilder: (context,index){
          return Card(
            color: Colors.deepOrange,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  Row(
              children:<Widget> [
                CircleAvatar(
                 // backgroundImage: AssetImage("images/'${data['list'][index]['weather'][0]['main']}'.png"),
                    backgroundImage: AssetImage("images/weather/${data['list'][index]['weather'][0]['icon'].toString().toLowerCase()}.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                         Text(
                    DateFormat('E-dd/MM/yyyy').format(DateTime.fromMicrosecondsSinceEpoch(data['list'][index]['dt']*1000000)),
                    style: TextStyle(fontSize: 22,color: Colors.white)),
                  Text( '${DateFormat('HH:mm').format(DateTime.fromMicrosecondsSinceEpoch(data['list'][index]['dt']*1000000))} | '
                  '${data['list'][index]['weather'][0]['main']}',style: TextStyle(fontSize: 22,color: Colors.white),),
            
                      ],
                  ),
                 
              ],
                  ),
                  Text( '${data['list'][index]['main']['temp'].round()} C',style: TextStyle(fontSize: 22,color: Colors.white),),
                ],
              ),
            ),
          );
        }
      )
    );
  }
}