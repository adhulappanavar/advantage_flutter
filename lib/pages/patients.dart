
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class PatientPage extends StatefulWidget {
  @override
  PatientPageState createState() => new PatientPageState();
}

class PatientPageState extends State<PatientPage> {

  List data;

  Future<String> getData() async {
    var response = await http.get(
      //Uri.encodeFull("http://192.168.0.132:3000/patients"),
      Uri.encodeFull("https://flutterlogin-1d2da.firebaseio.com/patients.json"),
      headers: {
        "Accept": "application/json"
      }
    );

    this.setState(() {
      data = JSON.decode(response.body);
    });
    print(data[1]["email"]);
    
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
        title: new Text("Patients"),
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: new Text(data[index]["email"]),
          );
        },
      ),
    );
  }
}


/* import 'package:flutter/material.dart';

class Patients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      title: new Text("Patients"),
    ),
    body: new Center(
      child:  new Text("Welcome to Patients List", style: new TextStyle(fontSize: 35.0))
    ),
    );
  }
} */


