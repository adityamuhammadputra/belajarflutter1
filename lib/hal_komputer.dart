import 'package:flutter/material.dart';

class Komputer extends StatelessWidget {
  // const Headset({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20),),
            new Text('Komputer', style: new TextStyle(fontSize: 30 ),),
            new Padding(padding: new EdgeInsets.all(20),),
            // new Icon(Icons.computer, size: 90.0)
            new Image(image: new NetworkImage('https://candutekno.com/wp-content/uploads/2019/06/pc-4-jutaan.jpg'), width: 200,)
          ],
        ),
      ),
    );
  }
}