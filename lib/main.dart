import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Adityamuhammadputra",
    home: new HalamanSatu(),
    routes: <String, WidgetBuilder>{
      '/HalamanSatu' : (BuildContext context) => new HalamanSatu(),
      '/HalDua' :(BuildContext context) => new HalDua(),
    }
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
                new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.blue),
                new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.red),
                new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.blue),
              ],
            ),
            new Icon(Icons.sentiment_very_dissatisfied, size: 100, color: Colors.green[300]),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
                // padding : new EdgeInsets.all(10.0),
              children:<Widget>[
                MyCard(icon:Icons.home, text: 'Home', warnaIcon:Colors.blue),
                MyCard(icon:Icons.sim_card, text: 'gsm', warnaIcon:Colors.red)
              ] 
            )
          ],
        ),
      ),
    );
  }
}



class MyCard extends StatelessWidget {
  // const MyCard({Key key}) : super(key: key);
MyCard({this.icon, this.text, this.warnaIcon});
final IconData icon;
final String text;
final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: new EdgeInsets.all(5),
      child: new Card(
        child: 
          new Column(
            children: <Widget>[
              new Icon(icon, size: 50, color: warnaIcon,),
              new Text(text,style: new TextStyle(fontSize: 20.0),),
              new IconButton(
                icon: new Icon(Icons.headset),
                onPressed: (){
                  Navigator.pushNamed(context, '/HalDua');
                },
              ) 

            ],
          )
      )
    );
  }
}

class HalDua extends StatelessWidget {
  // const HalDua({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Halaman dua'),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.backspace),
          onPressed: (){
            Navigator.pushNamed(context, '/HalamanSatu');
          },
        ),
      ),
    );
  }
}
