import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      title: new Text("About Us"),
    ),
    body: ListView(
          children: [
            new Text("Welcome to About Us",style: new TextStyle(fontSize: 35.0)),
            new Text("Based on", style: new TextStyle(fontSize: 20.0)),
            new Text("************* 1 ***************", style: new TextStyle(fontSize: 20.0)),
            new Text("Bram Vanbilsen - Flutter SDK Tutorial", style: new TextStyle(fontSize: 20.0)),
            new Text("Building a Beautiful Sliding Side Menu Using a Drawer", style: new TextStyle(fontSize: 20.0)),
            new Text("https://www.youtube.com/watch?v=WqpV_w6lioA", style: new TextStyle(fontSize: 20.0)),
            new Text("*************** 2 ***************", style: new TextStyle(fontSize: 20.0)),
            new Text("Based on", style: new TextStyle(fontSize: 20.0)),
            new Text("Tensor Programming", style: new TextStyle(fontSize: 20.0)),
            new Text("Using Cloud Firestore as a Realtime Datastore for CRUD with Dart's Flutter Framework", style: new TextStyle(fontSize: 20.0)),
            new Text("https://www.youtube.com/watch?v=OJ_u34bD_q8&index=52&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd", style: new TextStyle(fontSize: 20.0)),
            new Text("************* Thanks ***************", style: new TextStyle(fontSize: 20.0)),

          ],
        ),
    );
  }
} 
