import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
TextEditingController textEditingController=TextEditingController();
String input='';
bool notVisible=false;
var galleryData;
List<dynamic> items=[];
  int currentPage=1;
  int size=15;
  int total=0;
  ScrollController scrollcontroller = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     scrollcontroller.addListener(() {
     if(scrollcontroller.position.pixels == scrollcontroller.position.maxScrollExtent){
        if(currentPage <total ){
          setState(() {
          ++currentPage;
        });
                    }
                  }
                });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Users => ${input} :  ${currentPage}/ ${total}",
        style: TextStyle(
          fontSize: 22,
          color: Colors.white),),
      ),
       body: Center(
        child: Column(
          children: [
            Row(
              children: [
                  Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    obscureText: notVisible,
                    controller: textEditingController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                       onPressed: (){
                        setState(() {
                          notVisible=!notVisible;
                        });
                       },
                       icon:  Icon(
                        notVisible==true ?Icons.visibility:Icons.visibility_off                       ),
                      ),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1,color: Colors.yellowAccent))
                    ),
                  ),
                ),
              ),
            
            IconButton(icon:Icon(Icons.search ,color: Colors.blueAccent,),
            onPressed: (){
              setState(() {
                currentPage=1;
                input=textEditingController.text;
               
                getSeach(input);
             
              });
              
              print(input);
            },)
              ],
            ),
            Expanded(
              child: ListView.builder(
              itemCount:  (galleryData==null)?0:items.length,
               controller: scrollcontroller,
              itemBuilder: (context,index){
                return ListTile(
                  title: Row(
                    children: [

                      Row(
                        children: [
                          CircleAvatar(
                    backgroundImage: NetworkImage(items[index]['avatar_url']),
                    radius:50 ,
                  ),
                    SizedBox(width: 20,), 
                   Text('${items[index]['login']}',
                        style: TextStyle(fontSize: 18),), 
                        ],
                      ),
                
                        CircleAvatar(
                          child:Text('${items[index]['score']}', style: TextStyle(color: Colors.white),)
                        )
                    ]       
                    ));}))
                    ]))
                   
         
         
        
    );
  }

void  getSeach(String input){
    String url ="https://api.github.com/search/users?q=${input}&per_page=${size}&page=${currentPage }";
     print(url);
     http.get(Uri.parse(url)).then((resp){
     
    
    setState(() {
       galleryData=json.decode(resp.body);
      items=galleryData['items'];
      if(galleryData['total_count']% size==0){
            total=galleryData['total_count']~/size; 
      }else total = (galleryData['total_count']/size ).floor() + 1;

    
    });
      
   // print(items);
  });
  }
 
 
}