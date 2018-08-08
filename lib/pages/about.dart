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
            new Text("https://steemit.com/utopian-io/@tensor/using-cloud-firestore-as-a-realtime-datastore-for-crud-with-dart-s-flutter-framework", style: new TextStyle(fontSize: 20.0)),
            new Text("Using Cloud Firestore as a Realtime Datastore for CRUD with Dart's Flutter Framework", style: new TextStyle(fontSize: 20.0)),
            new Text("https://www.youtube.com/watch?v=OJ_u34bD_q8&index=52&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd", style: new TextStyle(fontSize: 20.0)),
            new Text("************* Thanks ***************", style: new TextStyle(fontSize: 20.0)),
            new Text("************* 3 ***************", style: new TextStyle(fontSize: 20.0)),
            new Text("Flutter, Redux and Firebase Cloud Firestore — in sync", style: new TextStyle(fontSize: 20.0)),
            new Text("https://medium.com/shift-studio/flutter-redux-and-firebase-cloud-firestore-in-sync-2c1accabdac4", style: new TextStyle(fontSize: 20.0)),
            new Text("https://github.com/theshiftstudio/flutter_firebase_redux_sync", style: new TextStyle(fontSize: 20.0)),
            new Text("************* Thanks ***************", style: new TextStyle(fontSize: 20.0)),
          ],
        ),
    );
  }
} 
