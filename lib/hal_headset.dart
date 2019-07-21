import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  // const Headset({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20),),
            new Text('Hedset', style: new TextStyle(fontSize: 30 ),),
            new Padding(padding: new EdgeInsets.all(20),),
            // new Icon(Icons.headset, size: 90.0)
            new Image.asset('img/hedset.jpg', width: 200.0,)
          ],
        ),
      ),
    );
  }
}