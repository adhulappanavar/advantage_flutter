
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class ProductPage extends StatefulWidget {
  @override
  ProductPageState createState() => new ProductPageState();
}

class ProductPageState extends State<ProductPage> {

  List data;

  Future<String> getData() async {
    var response = await http.get(
      //Uri.encodeFull("http://192.168.0.132:3000/products"),
      Uri.encodeFull("https://flutterlogin-1d2da.firebaseio.com/products.json"),
      headers: {
        "Accept": "application/json"
      }
    );

    this.setState(() {
      data = JSON.decode(response.body);
    });
    print(data[1]["name"]);
    
    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Products"),
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: new Text(data[index]["name"]),
          );
        },
      ),
    );
  }
}