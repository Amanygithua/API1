import 'dart:convert';

import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter/material.dart' ;
import 'home_screen.dart';
import 'package:http/http.dart' as http;
class home extends StatelessWidget {
  getData() async{
    var url=Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response=await http.get(url);
    var body= response.body;
    var issonData=jsonDecode(body) as List;
    print(issonData[0]['title']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API2'),),
      body: Center(child: ElevatedButton(onPressed: (){
        getData();
      },child: Text('posts'),),),
    );
  }
}
