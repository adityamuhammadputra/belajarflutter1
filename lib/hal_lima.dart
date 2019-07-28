import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HalLima extends StatefulWidget {
  HalLima({Key key}) : super(key: key);

  _HalLimaState createState() => _HalLimaState();
}

class _HalLimaState extends State<HalLima> {
  List dataJSON;

  Future<String> ambildata() async {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      dataJSON = jsonDecode(hasil.body);
    });
  }

  @override
  void initState() {
    this.ambildata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Halaman 5 List Json'),
      ),
      body: new ListView.builder(
        itemCount: dataJSON == null ? 0 : dataJSON.length,
        itemBuilder: (context, i) {
          return new Card(
            child: new Text(
              dataJSON[i]['title'],
              style: new TextStyle(fontSize: 20, color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}
