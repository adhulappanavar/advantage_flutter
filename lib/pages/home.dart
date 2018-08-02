import 'package:flutter/material.dart';

import './patients.dart';
import './products.dart';
import './about.dart';
import './firebasecloudstore.dart';
import './reduxfirebasecounter.dart';


class HomePage extends StatefulWidget{
  _HomePageState createState()=>  _HomePageState();
}


class _HomePageState extends State<HomePage> {
  _HomePageState();

   String currentProfilePic = "https://avatars3.githubusercontent.com/u/16825392?s=460&v=4";
  String otherProfilePic = "https://yt3.ggpht.com/-2_2skU9e2Cw/AAAAAAAAAAI/AAAAAAAAAAA/6NpH9G8NWf4/s900-c-k-no-mo-rj-c0xffffff/photo.jpg";

  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title : new Text("Advantage App"), 
        backgroundColor: Colors.redAccent
        ),
      drawer: new Drawer(
        child : new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountEmail: new Text("bramvbilsen@gmail.com"),
              accountName: new Text("Bramvbilsen"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(currentProfilePic),
                ),
                onTap: () => print("This is your current account."),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(otherProfilePic),
                  ),
                  onTap: () => switchAccounts(),
                ),
              ],
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage("https://img00.deviantart.net/35f0/i/2015/018/2/6/low_poly_landscape__the_river_cut_by_bv_designs-d8eib00.jpg"),
                  fit: BoxFit.fill
                )
              ),
            ),
            new ListTile(
              title : new Text("Patients"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).
                  push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new PatientPage()
                      )
                      );
              }
            ),
            new ListTile(
              title : new Text("Products"),
              trailing: new Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).
                  push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new ProductPage()
                      )
                      );
              }
            ),
            new ListTile(
              title : new Text("Firestore CRUD"),
              //Using Cloud Firestore as a Realtime Datastore for CRUD with Dart's Flutter Framework
              //Tensor Programming
              //https://www.youtube.com/watch?v=OJ_u34bD_q8&index=52&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd
              //https://github.com/tensor-programming/flutter_firestore_tutorial

              trailing: new Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).
                  push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new FirebasecloudstorePage()
                      )
                      );
              }
            ),new ListTile(
              title : new Text("Redux Firebase Counter"),
              trailing: new Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).
                  push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new ReduxFirebaseCounterPage()
                      )
                      );
              }
            ),new ListTile(
              title : new Text("About Us"),
              trailing: new Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).
                  push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage()
                      )
                      );
              }
            ),
            new Divider(),
            new ListTile(
              title : new Text("Close"),
              trailing: new Icon(Icons.cancel),
              onTap: ()=> Navigator.of(context).pop(),
            )
            ],
        )
      ),
      body: new Center(
        child : new Text("Welcome to Advantage", 
        style : new TextStyle(fontSize: 35.0)
        )),
    );
  }
}