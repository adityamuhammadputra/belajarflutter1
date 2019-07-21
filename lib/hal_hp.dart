import 'package:flutter/material.dart';

class Henpon extends StatelessWidget {
  // const Headset({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text('Henpon', style: new TextStyle(fontSize: 30 ),),
            new Icon(Icons.phone_android, size: 90.0)
          ],
        ),
      ),
    );
  }
}