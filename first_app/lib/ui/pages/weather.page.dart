import 'package:first_app/ui/pages/weather-details.page.dart';
import 'package:flutter/material.dart';
class MyWeather extends StatefulWidget {
  const MyWeather({super.key});

  @override
  State<MyWeather> createState() => _MyWeatherState();
}

class _MyWeatherState extends State<MyWeather> {
  String city='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((city!='')?city:'Weather app',
        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body:Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'taper une ville'),
                onChanged: (value){
                  setState(() {
                    this.city=value;
                  });
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, 
              PageRouteBuilder(pageBuilder:(_,__,___)=> WeatherDetails(city)));
            }, 
            child: Text('voir meteo',
            style: 
            TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),)),
          )
        ],
      )
    );
  }
}