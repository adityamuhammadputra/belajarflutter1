import 'package:flutter/material.dart';

class Bintang extends StatelessWidget {
  // const Headset({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20),),
            new Text('Bintang', style: new TextStyle(fontSize: 30 ),),
            new Padding(padding: new EdgeInsets.all(20),),
            new Icon(Icons.star, size: 90.0)
          ],
        ),
      ),
    );
  }
}