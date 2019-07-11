import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Adityamuhammadputra",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: new AppBar(
        backgroundColor: Colors.red[1000],
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text('adityamuhammadputra'),
        ), 
        actions: <Widget>[
          new Icon(Icons.sentiment_dissatisfied )
        ],
      ),
      body: new Container(
        child: new Column (
          children: <Widget>[
            new Icon(Icons.sentiment_very_dissatisfied, size: 100),
            new Row(
              children: <Widget>[
                new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.red),
                new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.red),
                new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.red),
                new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.red),
              ],
            ),
            new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.green[300]),
          ],
        )
      ),
      // body: Center(
      //     child: new Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: <Widget>[
      //       const RaisedButton(
      //         onPressed: null,
      //         child: Text(
      //           'Disabled',
      //           style: TextStyle(fontSize: 20),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
// void main() {
//   runApp(new MaterialApp(
//     home: new HalHallo(),
//   ));
// }

 
// class HalHallo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: Center(
//         child : new Text('hello akhirat yuhuuuu'),
//       )
//     );
//   }
// }
