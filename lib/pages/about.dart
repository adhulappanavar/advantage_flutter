import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      title: new Text("About Us"),
    ),
    body: new Center(
      child:  new Text("Welcome to About Us", style: new TextStyle(fontSize: 35.0))
    ),
    );
  }
} 
